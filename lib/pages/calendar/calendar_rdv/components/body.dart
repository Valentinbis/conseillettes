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
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding * 1.5,
                      top: kDefaultPadding,
                    ),
                    child: Text(
                      'Rendez-vous le :',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding * 0.2,
                      top: kDefaultPadding,
                    ),
                    child: Text(
                      '08/03/2023',
                      style: TextStyle(
                          color: kPrimaryColor3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding * 1.5,
                      top: kDefaultPadding * 0.2,
                    ),
                    child: Text(
                      'Coach :',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding * 0.2,
                      top: kDefaultPadding * 0.2,
                    ),
                    child: Text(
                      'Auriane',
                      style: TextStyle(
                          color: kPrimaryColor3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding * 2),
            child: Center(
              child: Text(
                'Séance 1',
                style: TextStyle(
                    color: kPrimaryColor2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(
              top: kDefaultPadding * 0.5,
              bottom: kDefaultPadding,
            ),
            child: Center(
              child: Text(
                'Module : identité de marque',
                style: TextStyle(
                    color: kPrimaryColor2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Divider(
            indent: 80,
            endIndent: 80,
            thickness: 1,
            color: kPrimaryColor2,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding * 2.8,
              top: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/camera.png",
                  width: 50,
                  height: 50,
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.07),
                        padding: const EdgeInsets.only(
                            top: kDefaultPadding * 0.7, left: kDefaultPadding),
                        height: 50.0,
                        width: 200.0,
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
                        child: Padding(
                          padding: EdgeInsets.only(left: kDefaultPadding / 4),
                          child: Text(
                            'Accéder à la visio',
                            style: TextStyle(
                                fontSize: kTextSize,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor1),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: kDefaultPadding),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.07),
                  height: 50.0,
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: kPrimaryColor1,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kPrimaryColor3, width: 2),
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
                        padding: EdgeInsets.only(left: kDefaultPadding * 0.8),
                        child: Text(
                          'Contacter le coach',
                          style: TextStyle(
                            fontSize: kTextSize,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor3,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: kDefaultPadding / 4),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/message.png",
                            color: kPrimaryColor3,
                            width: 50,
                            height: 25,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                bottom: kDefaultPadding / 4, left: kDefaultPadding * 0.5),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.07),
                  height: 50.0,
                  width: 305.0,
                  decoration: BoxDecoration(
                    color: kPrimaryColor1,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kPrimaryColor2, width: 2),
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
                        padding: EdgeInsets.only(left: kDefaultPadding * 0.8),
                        child: Text(
                          'Modifier le rendez-vous',
                          style: TextStyle(
                            fontSize: kTextSize,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor2,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: kDefaultPadding / 4),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/calendar.png",
                            color: kPrimaryColor2,
                            width: 50,
                            height: 25,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: kDefaultPadding),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.07),
                  padding: const EdgeInsets.only(
                      top: kDefaultPadding * 0.7, left: kDefaultPadding),
                  height: 50.0,
                  width: 280.0,
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
                  child: Padding(
                    padding: EdgeInsets.only(left: kDefaultPadding / 4),
                    child: Text(
                      'Annuler le rendez-vous',
                      style: TextStyle(
                          fontSize: kTextSize,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor1),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
