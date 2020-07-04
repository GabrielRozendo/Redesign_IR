import 'package:flutter/material.dart';
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

  static const height = 160.0;

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
          value = (1 - (value.abs() * .30)).clamp(0, 1);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * height,
            // width: ,
            child: child,
          ),
        );
      },
    );
  }

  Widget _cardTile(BuildContext context, int index) {
    final color = index % 2 == 0
        ? Theme.of(context).cardColor
        : Theme.of(context).primaryColor;

    return Padding(
      padding: EdgeInsets.all(AppDimens.paddingM),
      child: Card(
        shape: Theme.of(context).cardTheme.shape,
        shadowColor: Theme.of(context).cardTheme.shadowColor,
        elevation: Theme.of(context).cardTheme.elevation,
        color: color,
        child: Container(
          // padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Visa',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$ 7,100.50',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('** 8048'),
                  Text('08/27'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
