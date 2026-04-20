import 'package:arzly/features/chat/chat_screen.dart';
import 'package:arzly/features/home/home_page.dart';
import 'package:arzly/features/nav_container/widgets/modern_bottom_nav.dart';
import 'package:arzly/features/new_listing/new_listing_screen.dart';
import 'package:arzly/features/settings/settings_screen.dart';
import 'package:arzly/features/user_listings/user_listings_screen.dart';
import 'package:flutter/material.dart';

class NavContainer extends StatefulWidget {
  const NavContainer({super.key});

  @override
  State<NavContainer> createState() => _NavContainerState();
}

class _NavContainerState extends State<NavContainer> {
  int currentIndex = 0;
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: const <Widget>[
            HomePage(),
            ChatScreen(),
            NewListingScreen(),
            UserListingsScreen(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: ModernBottomNav(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
