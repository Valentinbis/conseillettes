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
              'Qu\'es ce que c\'est'.toUpperCase(),
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
              left: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Text(
              'lorem ipsum',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
