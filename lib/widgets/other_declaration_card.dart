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
  static const radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Container(
      constraints: BoxConstraints(minHeight: 100, maxHeight: 208),
      child: Stack(
        children: [
          _card(context),
          _content(context),
          // _ink(context),
        ],
      ),
    );
  }

  Widget _ink(BuildContext context) => Positioned(
        top: outsideBox,
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          color: Colors.amber,
          child: InkWell(
            onTap: function,
            splashColor: Theme.of(context).primaryColor,
          ),
        ),
      );

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
          child: Card(
            margin: EdgeInsets.zero,
          ),
        ),
      );

  Widget _content(BuildContext context) => Positioned.fill(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _image(context),
            Divider(height: 0),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(AppDimens.paddingM),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _texts(context),
                    _button(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget _texts(BuildContext context) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text1,
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Text(
              text2,
              style: Theme.of(context).primaryTextTheme.caption.extraBold,
            ),
          ],
        ),
      );

  Widget _button(BuildContext context) => Container(
        height: 28,
        width: 28,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
          size: 14,
        ),
      );

  Widget _image(BuildContext context) => Container(
        // height: imageHeight,
        // child: AspectRatio(
        // aspectRatio: 3 / 2,
        child: Image.asset(
          this.image,
          fit: BoxFit.fitHeight,
          height: imageHeight,
          // ),
        ),
      );
}
