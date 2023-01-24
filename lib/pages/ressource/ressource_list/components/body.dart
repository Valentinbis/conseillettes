import 'dart:convert';
import 'package:conseillettes/pages/ressource/components/blocRessource.dart';
import 'package:conseillettes/themes/constants.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'blocRessource_list.dart';

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
              'L\'identité de marque'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: kPrimaryColor2,
                  decorationThickness: 3),
            ),
          ),
          blocRessourceList(
            size: size,
            title: 'Qu\'es ce que c\'est ?',
            color: kPrimaryColor1,
            disabled: false,
            onPress: () => context.push('/ressources/list/detail'),
          ),
          blocRessourceList(
            size: size,
            title: 'Gérer ses réseaux sociaux',
            color: kPrimaryColor1,
            disabled: true,
            onPress: () {},
          ),
          blocRessourceList(
            size: size,
            title: 'Création de contenu',
            color: kPrimaryColor1,
            disabled: true,
            onPress: () {},
          ),
          blocRessourceList(
            size: size,
            title: 'Définir ses cibles',
            color: kPrimaryColor1,
            disabled: true,
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
                'Obtenir plus de ressources',
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
