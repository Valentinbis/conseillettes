import 'dart:convert';
import 'package:conseillettes/themes/constants.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'blocEntreprise.dart';
import 'blocCoachs.dart';
import 'blocObjectifs.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: <Widget>[
          blocEntreprise(size: size),
          blocCoachs(size: size),
          blocObjectifs(size: size),
        ],
      ),
    );
  }
}
