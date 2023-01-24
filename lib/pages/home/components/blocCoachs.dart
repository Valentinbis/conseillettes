import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';

import 'profile.dart';

class blocCoachs extends StatelessWidget {
  const blocCoachs({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.07),
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding,
                right: kDefaultPadding),
            height: 160.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: kPrimaryColor2,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 10,
                  color: kTextColor.withOpacity(0.3),
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      'Les coachs',
                      style: TextStyle(
                          fontSize: kTextSize,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor1),
                    ),
                    Profile(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
