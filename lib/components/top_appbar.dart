import 'package:flutter/material.dart';
import 'package:conseillettes/themes/constants.dart';
import 'package:go_router/go_router.dart';

import 'menu.dart';
import 'searchPage.dart';

class CustomTopAppBar extends StatelessWidget {
  const CustomTopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/logo/Conseillettes_MelonPink.jpg",
                  width: 60,
                  height: 30,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SearchPage())),
                  icon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    size: 20,
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
