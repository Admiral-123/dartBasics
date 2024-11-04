import 'package:flutter/material.dart';

class RoundedBtnWidget extends StatelessWidget {
  // some properties for new widgets btnName is essenstial (cant be null)
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  // constructor:
  const RoundedBtnWidget(
      {super.key,
      required this.btnName, // btnName is required
      this.bgColor,
      this.callback,
      this.icon,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!(); // '!' means it'll not be null
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          )),
      // if icon isnt null then do the Row else do Text
      child: icon != null
          ? Row(
              children: [
                icon!,
                // The icon! is used to assert that the nullable icon is definitely not null in that specific context.
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
    );
  }
}
