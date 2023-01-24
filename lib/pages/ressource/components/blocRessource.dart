import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';

import '../ressource_list/ressource_list.dart';

class blocRessource extends StatelessWidget {
  const blocRessource({
    Key? key,
    required this.size,
    required this.title,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  final Size size;
  final String title;
  final Color color;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding / 4),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.07),
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            height: 70.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 10,
                  color: kTextColor.withOpacity(0.3),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: kTextSize,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor1),
                  ),
                ),
                IconButton(
                  icon: Image.asset(
                    "assets/icons/fleche_droite.png",
                    width: 60,
                    height: 30,
                  ),
                  onPressed: onPress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
