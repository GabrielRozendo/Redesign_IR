import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:redesign_ir/constants/app_assets.dart';
import 'package:redesign_ir/constants/app_colors.dart';
import 'package:redesign_ir/constants/app_dimens.dart';
import 'package:redesign_ir/widgets/custom_button.dart';
import 'package:redesign_ir/widgets/default_card.dart';
import 'package:redesign_ir/widgets/last_declarations.dart';
import 'package:redesign_ir/widgets/other_declaration_card.dart';
import 'package:redesign_ir/widgets/tributes.dart';
import '../helpers/textstyle_extension.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MediaQueryData queryData;
  double devicePixelRatio;
  double deviceSizeHeight;
  double deviceSizeWidth;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    devicePixelRatio = queryData.devicePixelRatio;
    deviceSizeHeight = queryData.size.height * devicePixelRatio;
    deviceSizeWidth = queryData.size.width * devicePixelRatio;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _header,
              Container(
                width: double.infinity,
                child: _body,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _header {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimens.horizontal_padding,
        vertical: AppDimens.paddingS,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.only(
          bottomRight: const Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: AppColors.celadonblue,
              ),
              FlutterLogo(size: 40),
            ],
          ),
          Center(
            child: Image.asset(
              AppAssets.receitaFederal,
              height: 30,
            ),
          ),
          SizedBox(height: 32),
          Text(
            'Que bom ter você por aqui,',
            style: Theme.of(context).primaryTextTheme.caption,
            textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Evaristo Costa',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(AppDimens.paddingM),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryTextTheme.headline1.color,
                ),
                child: Icon(
                  Icons.lightbulb_outline,
                  color: Theme.of(context).cardColor,
                ),
              ),
            ],
          ),
          SizedBox(height: AppDimens.spaceL),
        ],
      ),
    );
  }

  Widget get _body {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimens.horizontal_padding,
            vertical: AppDimens.vertical_padding,
          ),
          child: CustomButton(
            Icons.add,
            'Nova Declaração',
            () => print('nova declaração'),
          ),
        ),
        _declaration,
        SizedBox(height: AppDimens.paddingL),
        LastDeclarations(),
        SizedBox(height: AppDimens.paddingL),
        Tributes(),
      ],
    );
  }

  Widget get _declaration {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimens.horizontal_padding,
        vertical: AppDimens.vertical_padding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Declarações',
            style: Theme.of(context).primaryTextTheme.headline2,
            textAlign: TextAlign.start,
          ),
          Text(
            'Selecione abaixo a opção para realizar a sua declaração :)',
            style: Theme.of(context).primaryTextTheme.bodyText2,
          ),
          SizedBox(height: AppDimens.paddingL),
          _anualDeclarationCard,
          SizedBox(height: AppDimens.paddingL),
          _otherDeclarations,
        ],
      ),
    );
  }

  Widget get _anualDeclarationCard {
    return DefaultCard(
      SizedBox(
        height: 180,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimens.paddingM),
              child: Image.asset(
                AppAssets.anual,
                width: 80 * devicePixelRatio,
                height: double.infinity,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Declaração de',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
                Text(
                  'ajuste anual',
                  style: Theme.of(context).primaryTextTheme.headline3.extraBold,
                ),
              ],
            ),
          ],
        ),
      ),
      () => print('print'),
      Icons.add,
    );
  }

  Widget get _otherDeclarations {
    return Row(
      children: [
        Expanded(
          child: OtherDeclarationCard(
            AppAssets.espolio,
            'Declaração final',
            'de espólio',
            () => print('card1'),
          ),
        ),
        SizedBox(width: AppDimens.paddingL),
        Expanded(
          child: OtherDeclarationCard(
            AppAssets.saidaPais,
            'Declaração de',
            'saída do País',
            () => print('card2'),
          ),
        ),
      ],
    );
  }
}
