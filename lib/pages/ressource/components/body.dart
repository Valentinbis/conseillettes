import 'dart:convert';
import 'package:conseillettes/themes/constants.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ressource_list/ressource_list.dart';
import 'blocRessource.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Text(
              'RESSOURCES GRATUITES',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: kPrimaryColor2,
                decorationThickness: 3,
              ),
            ),
          ),
          blocRessource(
            size: size,
            title: 'L\'identité de marque',
            color: kPrimaryColor3,
            onPress: () => context.push('/ressources/list'),
          ),
          blocRessource(
            size: size,
            title: 'Gérer ses réseaux sociaux',
            color: kPrimaryColor3,
            onPress: () {},
          ),
          blocRessource(
            size: size,
            title: 'Création de contenu',
            color: kPrimaryColor3,
            onPress: () {},
          ),
          blocRessource(
            size: size,
            title: 'Définir ses cibles',
            color: kPrimaryColor3,
            onPress: () {},
          ),
          const Divider(
            indent: 80,
            endIndent: 80,
            thickness: 1,
            color: kPrimaryColor2,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: kDefaultPadding / 2,
              ),
              child: Text(
                'Obtenir plus de modules',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor2,
                ),
              ),
            ),
          ),
          blocRessource(
            size: size,
            title: 'Choisir un forfait',
            color: kPrimaryColor2,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
