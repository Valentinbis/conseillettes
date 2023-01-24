import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  const CustomBottomNavbar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/ressources.png"),
          ),
          label: "Ressources",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/tableau.png"),
          ),
          label: "Tableau de bord",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/accueil.png"),
          ),
          label: "Accueil",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/calendrier.png"),
          ),
          label: "Calendrier",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/compte.png"),
          ),
          label: "Compte",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      backgroundColor: kPrimaryColor2,
      unselectedItemColor: kSecondaryColor1,
      currentIndex: selectedIndex,
      selectedItemColor: kPrimaryColor1,
      onTap: (selectedIndex) {
        switch (selectedIndex) {
          case 0:
            context.go('/ressources');
            break;
          case 1:
            context.go('/tableau');
            break;
          case 2:
            context.go('/');
            break;
          case 3:
            context.go('/calendrier');
            break;
          case 4:
            context.go('/login');
            break;
        }
      },
    );
  }
}
