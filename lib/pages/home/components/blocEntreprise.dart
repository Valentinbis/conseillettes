import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';

import 'profile.dart';

class blocEntreprise extends StatelessWidget {
  const blocEntreprise({
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
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            height: 150.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: kPrimaryColor3,
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
                    Padding(
                      padding: EdgeInsets.only(left: kDefaultPadding / 4),
                      child: Text(
                        'L\'entreprise',
                        style: TextStyle(
                            fontSize: kTextSize,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor1),
                      ),
                    ),
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
