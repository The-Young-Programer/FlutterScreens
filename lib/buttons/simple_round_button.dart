import 'package:flutter/material.dart';

class SimpleRoundButton extends StatelessWidget {
  final Color? backgroundColor;
  final Text? buttonText;
  final Function? onPressed;

  SimpleRoundButton({this.backgroundColor, this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: TextButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
                overlayColor: WidgetStateProperty.all(this.backgroundColor),
                backgroundColor: WidgetStateProperty.all(this.backgroundColor),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: buttonText,
                  ),
                ],
              ),
              onPressed: () => onPressed!(),
            ),
          ),
        ],
      ),
    );
  }
}
