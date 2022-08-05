import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preticaldemo/utils/constant.dart';


class SimpleButton extends StatelessWidget {
  final Color color;
  final Function onTap;
  final double height, width;
  final String text;

  SimpleButton(
      {required this.color,
      required this.onTap,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          onTap();
        },
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                color: color,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          child: Text(
            text,
            style: kButtonTextStyle.copyWith(color: color),
          ),
        ),
      ),
    );
  }
}

class MaterialSplashButton extends StatelessWidget {
  final Color color;
  final Function onTap;
  final double height, width;
  final String text;

  MaterialSplashButton(
      {required this.color,
      required this.onTap,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          child: Text(
            text,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

class IconSplashButton extends StatelessWidget {
  final double height;
  final Function onTap;
  final Icon icon;

  IconSplashButton(
      {required this.height, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: IconButton(
          icon: icon,
          onPressed: () {
            onTap();
          }),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  final bool showButton;
  final Function onPress;
  final String heroTag;

  const FormButton(
      {required this.showButton, required this.onPress, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showButton,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: kAppBarColor,
          )
        ]),
        child: FloatingActionButton(
          heroTag: heroTag,
          child: Icon(
            FontAwesomeIcons.plus,
            size: 20.0,
          ),
          backgroundColor: kAppBarColor,
          onPressed: () {
            onPress();
          },
        ),
      ),
    );
  }
}
