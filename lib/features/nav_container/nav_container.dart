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
  int currentNavIndex = 0;
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

  static int _pageIndexFromNavIndex(int navIndex) {
    assert(navIndex != 2);
    return navIndex < 2 ? navIndex : navIndex - 1;
  }

  static int _navIndexFromPageIndex(int pageIndex) {
    return pageIndex < 2 ? pageIndex : pageIndex + 1;
  }

  void _onNavTap(int navIndex) {
    if (navIndex == 2) {
      Navigator.of(context).push(createNewListingRoute());
      return;
    }
    final page = _pageIndexFromNavIndex(navIndex);
    pageController.animateToPage(
      page,
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
          onPageChanged: (pageIndex) {
            setState(() {
              currentNavIndex = _navIndexFromPageIndex(pageIndex);
            });
          },
          children: const <Widget>[
            HomePage(),
            ChatScreen(),
            UserListingsScreen(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: ModernBottomNav(
        currentNavIndex: currentNavIndex,
        onNavTap: _onNavTap,
      ),
    );
  }
}
