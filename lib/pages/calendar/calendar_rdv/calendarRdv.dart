import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';

import '../../../components/bottom_navbar.dart';
import '../../../components/searchPage.dart';
import '../../../components/top_appbar.dart';
import '../../../components/menu.dart';
import 'components/body.dart';

class CalendarRdv extends StatelessWidget {
  const CalendarRdv({Key? key, required this.title}) : super(key: key);
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
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 20,
            ),
            color: Colors.white,
          ),
        ],
      ),
      body: Body(),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedIndex: 3,
      ),
    );
  }
}
