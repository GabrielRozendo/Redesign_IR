import 'package:flutter/material.dart';
import 'package:redesign_ir/constants/app_colors.dart';
import 'package:redesign_ir/constants/app_dimens.dart';

class Tributes extends StatefulWidget {
  Tributes({Key key}) : super(key: key);

  @override
  _TributesState createState() => _TributesState();
}

class _TributesState extends State<Tributes> with TickerProviderStateMixin {
  AnimationController _animationController;
  static const _list = [3193.73, 5486.3];

  final _pageController = PageController(
    keepPage: false,
    viewportFraction: 0.75,
  );

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(microseconds: 1),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimens.horizontal_padding,
          ),
          child: Text(
            'Tributações',
            style: Theme.of(context).primaryTextTheme.headline2,
            textAlign: TextAlign.start,
          ),
        ),
        Container(
            height: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: _cardTile(context, 0)),
                Expanded(child: _cardTile(context, 1)),
              ],
            )),
      ],
    );
  }

  Widget _cardTile(BuildContext context, int index) {
    final color = index == 0
        ? Theme.of(context).primaryColor
        : Theme.of(context).cardColor;

    final isChecked = index == 0;

    return Padding(
      padding: EdgeInsets.all(AppDimens.paddingM),
      child: Card(
        shape: Theme.of(context).cardTheme.shape,
        shadowColor: Theme.of(context).cardTheme.shadowColor,
        elevation: Theme.of(context).cardTheme.elevation,
        color: color,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: AppDimens.paddingM),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.aliceblue,
                  // borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isChecked ? AppColors.erin : Colors.transparent,
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ),
              Text(
                'Por deduções legais',
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.headline4,
              ),
              Divider(
                color: index == 0
                    ? AppColors.steelblue
                    : Theme.of(context).accentColor,
              ),
              Text(
                'Impostos a pagar',
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.caption,
              ),
              Text(
                '3.193,73',
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
