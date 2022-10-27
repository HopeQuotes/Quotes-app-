import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:quotes/ui/navigation/navigator.dart';
import 'package:quotes/ui/screens/my_quotes/my_quotes_page.dart';
import 'package:quotes/ui/screens/profile/profile_page.dart';
import 'package:quotes/ui/screens/publish/publish_page.dart';

import '../screens/full_screen_quote/full_screen_quotes_page.dart';
import '../screens/home/home_page.dart';

class Core extends StatefulWidget {
  @override
  State<Core> createState() => _CoreState();
}

class _CoreState extends State<Core> {
  final _mainScreens = [
    const HomePage(),
    const FullScreenQuotesPage(),
    PublishPage(),
    MyQuotesPage(),
    ProfilePage(),
  ];

  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        labels: const ["Home", "Quotes", "Publish", "My quotes", "Profile"],
        initialSelectedTab: "Home",
        tabIconColor: Colors.indigo,
        tabSelectedColor: Colors.indigo,
        onTabItemSelected: (int value) {
          setState(() {
            if (value == 2) {
              context.navigateTo(PublishPage());
            } else {
              screenIndex = value;
            }
          });
        },
        icons: const [
          Icons.home_outlined,
          Icons.my_library_books_rounded,
          Icons.add,
          Icons.format_quote_rounded,
          Icons.person_outline
        ],
        textStyle:
            GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 12, color: Colors.black26),
      ),
      body: _mainScreens[screenIndex],
    );
  }
}
