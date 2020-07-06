import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:redesign_ir/constants/app_colors.dart';
import 'package:redesign_ir/constants/app_dimens.dart';

class LastDeclarations extends StatefulWidget {
  LastDeclarations({Key key}) : super(key: key);

  @override
  _LastDeclarationsState createState() => _LastDeclarationsState();
}

class _LastDeclarationsState extends State<LastDeclarations>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  final _pageController = PageController(
    keepPage: false,
    viewportFraction: 0.8,
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

  static const height = 230.0;

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
            'Últimas declarações',
            style: Theme.of(context).primaryTextTheme.headline2,
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          height: height,
          child: PageView.builder(
            controller: _pageController,
            itemBuilder: _itemBuilder,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            itemCount: 3,
          ),
        ),
      ],
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return AnimatedBuilder(
      animation: _animationController,
      child: _cardTile(context, index),
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * .3)).clamp(0, 1);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * height,
            width: double.infinity,
            child: child,
          ),
        );
      },
    );
  }

  Widget _cardTile(BuildContext context, int index) {
    final isOdd = index % 2 == 0;
    final color =
        isOdd ? Theme.of(context).cardColor : Theme.of(context).primaryColor;

    return Padding(
      padding: EdgeInsets.all(AppDimens.paddingS),
      child: Card(
        shape: Theme.of(context).cardTheme.shape,
        shadowColor: Theme.of(context).cardTheme.shadowColor,
        elevation: Theme.of(context).cardTheme.elevation,
        color: color,
        child: Container(
          padding: EdgeInsets.all(AppDimens.paddingL),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  '2/12',
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ),
              Text(
                '12 de Maio de 2020',
                style: Theme.of(context).primaryTextTheme.caption,
              ),
              SizedBox(height: AppDimens.paddingM),
              Text(
                'Declaração de ajuste anual',
                style: Theme.of(context).primaryTextTheme.headline4,
              ),
              SizedBox(height: AppDimens.paddingL),
              _progressBar(context, isOdd),
              SizedBox(height: AppDimens.paddingL),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Ainda faltam 2 de 12 etapas para finalizar',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                    ),
                    _button(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button(BuildContext context) => Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Icon(
            Icons.arrow_forward,
            color: Theme.of(context).accentColor,
            size: 14,
          ),
        ),
      );

  Widget _progressBar(BuildContext context, bool isOdd) {
    final bgColor = AppColors.aliceblue;
    final progressColor = isOdd ? AppColors.azure : Colors.yellow;

    return LinearPercentIndicator(
      lineHeight: 10,
      percent: 0.78,
      backgroundColor: bgColor,
      progressColor: progressColor,
      animation: true,
      animationDuration: 2000,
      // center: Text('78%'),
      linearStrokeCap: LinearStrokeCap.roundAll,
    );
  }
}
