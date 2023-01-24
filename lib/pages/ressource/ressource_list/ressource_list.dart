import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';

import '../../../components/bottom_navbar.dart';
import '../../../components/searchPage.dart';
import '../../../components/top_appbar.dart';
import '../../../components/menu.dart';
import 'components/body.dart';

class RessourceList extends StatelessWidget {
  const RessourceList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        title: Image.asset(
          "assets/logo/Conseillettes_Isabelline.png",
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const SearchPage())),
            icon: const Icon(
              Icons.search,
              size: 20,
            ),
            color: kPrimaryColor1,
          ),
        ],
      ),
      body: Body(),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedIndex: 0,
      ),
    );
  }
}
