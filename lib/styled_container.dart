import 'package:flutter/material.dart';
import 'constants.dart';

class StyledContainer extends StatelessWidget {
  StyledContainer({this.text, this.onTap});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return onTap != null
        ? GestureDetector(
            onTap: onTap,
            child: Container(
              margin: kAppMargin,
              padding: kAppPadding,
              decoration: BoxDecoration(
                  color: kAppContainer,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: kBoxShadow),
              child: Text(
                text,
                style: kStyledContainerTextStyle,
              ),
            ),
          )
        : Container(
            margin: kAppMargin,
            padding: kAppPadding,
            decoration: BoxDecoration(
                color: kAppContainer,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: kBoxShadow),
            child: Text(
              text,
              style: kStyledContainerTextStyle,
            ),
          );
  }
}
