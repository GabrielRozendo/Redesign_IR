import 'package:flutter/material.dart';
import '../constants/app_dimens.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function() function;
  const CustomButton(this.icon, this.text, this.function, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leading = icon == null
        ? Container()
        : Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(AppDimens.paddingS),
            child: Icon(
              this.icon,
              color: Theme.of(context).primaryTextTheme.button.color,
            ),
          );

    return InkWell(
      splashColor: Theme.of(context).backgroundColor,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          // gradient: RadialGradient(
          // stops: [0.2, 0.5, 0.7, 1],
          // center: Alignment(0.1, 0.3),
          // focal: Alignment(-0.1, 0.6),
          // focalRadius: 2,
          // colors: [
          // Theme.of(context).primaryColor.withOpacity(0.5),
          // Theme.of(context).primaryColor.withOpacity(0.7),
          // Theme.of(context).primaryColor.withOpacity(0.85),
          // Theme.of(context).primaryColor.withOpacity(0.95),
          // Theme.of(context).primaryColor,
          // ],
          // ),

          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.only(
          left: AppDimens.paddingL,
          top: AppDimens.paddingS,
          bottom: AppDimens.paddingS,
        ),
        child: Row(
          children: [
            leading,
            Expanded(
              child: Text(
                this.text,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.button,
              ),
            ),
          ],
        ),
      ),
      onTap: function,
    );
  }
}
