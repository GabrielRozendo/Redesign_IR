import 'package:flutter/material.dart';
import '../constants/app_dimens.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;
  final Function() function;
  final IconData iconData;
  final Color bgColor;
  const DefaultCard(
    this.child,
    this.function,
    this.iconData, {
    this.bgColor,
    Key key,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: _card(context),
    );
  }

  Widget _card(BuildContext context) => Card(
        color: bgColor ?? Theme.of(context).cardTheme.color,
        margin: EdgeInsets.zero,
        child: _getChild(context),
      );

  Widget _getChild(BuildContext context) => InkWell(
        onTap: function,
        splashColor: Theme.of(context).primaryColor,
        child: function == null
            ? this.child
            : Stack(
                children: [
                  this.child,
                  _button(context),
                ],
              ),
      );

  Widget _button(BuildContext context) => Positioned(
        bottom: AppDimens.paddingM,
        right: AppDimens.paddingM,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Icon(
            this.iconData,
            color: Theme.of(context).accentColor,
            size: 14,
          ),
        ),
      );
}
