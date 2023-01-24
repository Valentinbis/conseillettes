import 'dart:convert';
import 'package:conseillettes/pages/ressource/components/blocRessource.dart';
import 'package:conseillettes/themes/constants.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Text(
              'Votre calendrier de rendez-vous'.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: kPrimaryColor2,
                decorationThickness: 3,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: kDefaultPadding * 1.5,
              top: kDefaultPadding / 2,
            ),
            child: Text(
              'Vous n\'avez pas de rendez-vous pour le moment',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.07),
                  padding: const EdgeInsets.all(kDefaultPadding / 2),
                  height: 400.0,
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
                          const Padding(
                            padding: EdgeInsets.only(
                                left: kDefaultPadding * 1.5,
                                top: kDefaultPadding,
                                right: kDefaultPadding),
                            child: Text(
                              'Prendre un rendez-vous avec un coach ci-dessous :',
                              style: TextStyle(
                                  fontSize: kTextSize,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: kDefaultPadding, bottom: kDefaultPadding),
                            child: Image.asset(
                              "assets/images/calendar2.png",
                              width: 200,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          blocRessource(
            size: size,
            title: 'Valdier le rendez-vous',
            color: kPrimaryColor3,
            onPress: () => context.push('/calendrier/rdv'),
          ),
        ],
      ),
    );
  }
}
