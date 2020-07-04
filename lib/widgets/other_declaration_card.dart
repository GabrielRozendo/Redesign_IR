import 'package:flutter/material.dart';
import '../constants/app_dimens.dart';
import '../helpers/textstyle_extension.dart';

class OtherDeclarationCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final Function() function;
  const OtherDeclarationCard(
    this.image,
    this.text1,
    this.text2,
    this.function, {
    Key key,
  })  : assert(
          image != null && text1 != null && text2 != null && function != null,
        ),
        super(key: key);

  static const outsideBox = AppDimens.paddingS;
  final imageHeight = 140.0;
  static const radius = Radius.circular(40);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          bottomLeft: radius,
          bottomRight: radius,
        ),
      ),
      height: 200,
      child: Stack(
        children: [
          _card(context),
          _image(context),
        ],
      ),
    );
  }

  Widget _card(BuildContext context) => Positioned(
        top: outsideBox,
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.all(radius),
          ),
          child: Positioned(
            top: imageHeight - outsideBox,
            left: 0,
            right: 0,
            bottom: 0,
            child: Card(
              margin: EdgeInsets.zero,
              child: InkWell(
                onTap: function,
                splashColor: Theme.of(context).primaryColor,
                child: _getChild(context),
              ),
            ),
          ),
        ),
      );

  Widget _getChild(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(height: 0),
          Padding(
            padding: EdgeInsets.all(AppDimens.paddingL),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: Theme.of(context).primaryTextTheme.caption,
                    ),
                    Text(
                      text2,
                      style:
                          Theme.of(context).primaryTextTheme.caption.extraBold,
                    ),
                  ],
                ),
                _button(context),
              ],
            ),
          ),
        ],
      );

  Widget _button(BuildContext context) => Positioned(
        bottom: AppDimens.paddingM,
        right: AppDimens.paddingM,
        child: Container(
          height: 28,
          width: 28,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Icon(
            Icons.add,
            color: Theme.of(context).accentColor,
            size: 14,
          ),
        ),
      );

  Widget _image(BuildContext context) => Positioned(
        top: -outsideBox,
        left: 0,
        right: 0,
        child: Image.asset(
          this.image,
          height: imageHeight,
        ),
      );
}
