import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              color: kPrimaryColor2,
              child: Center(
                child: Image.asset(
                  "assets/logo/Conseillettes_MelonPink.jpg",
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Accueil'),
            onTap: () => context.go('/'),
          ),
          ListTile(
            leading: const Icon(Icons.find_in_page),
            title: const Text('Ressources'),
            onTap: () => context.go('/ressources'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Connexion'),
            onTap: () => context.go('/login'),
          ),
          Expanded(
            child: Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Les conseillettes"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
