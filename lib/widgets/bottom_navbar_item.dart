import 'package:find_cozy_house/pages/home_page.dart';
import 'package:find_cozy_house/pages/likes_page.dart';
import 'package:find_cozy_house/pages/credit_card_page.dart';
import 'package:find_cozy_house/pages/email_page.dart';
import 'package:find_cozy_house/theme.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    HomePage(),
    EmailPage(),
    CreditCardPage(),
    LikesPage(),
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _onTabItem(index);
        },
        margin: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: dongkerColor,
          ),

          /// E-mail
          SalomonBottomBarItem(
            icon: Icon(Icons.email),
            title: Text("E-mail"),
            selectedColor: dongkerColor,
          ),

          /// Card
          SalomonBottomBarItem(
            icon: Icon(Icons.credit_card),
            title: Text("Card"),
            selectedColor: dongkerColor,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: dongkerColor,
          ),
        ],
      ),
    );
  }
}

// import 'package:find_cozy_house/theme.dart';
// import 'package:flutter/material.dart';

// class BottomNavbarItem extends StatelessWidget {
//   final String imageUrl;
//   final bool isActive;

//   BottomNavbarItem({this.imageUrl, this.isActive});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Spacer(),
//         Image.asset(
//           imageUrl,
//           width: 26,
//         ),
//         Spacer(),
//         Container(
//           width: 30,
//           height: 2,
//           decoration: BoxDecoration(
//             color: purpleColor,
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(50),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


// floatingActionButton: Container(
      //   height: 65,
      //   width: MediaQuery.of(context).size.width - (2 * edge),
      //   margin: EdgeInsets.symmetric(
      //     horizontal: edge,
      //   ),
      //   decoration: BoxDecoration(
      //     color: Color(0xffF6F7F8),
      //     borderRadius: BorderRadius.circular(23),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       BottomNavbarItem(
      //         imageUrl: 'assets/icon_home.png',
      //         isActive: true,
      //       ),
      //       BottomNavbarItem(
      //         imageUrl: 'assets/icon_email.png',
      //         isActive: false,
      //       ),
      //       BottomNavbarItem(
      //         imageUrl: 'assets/icon_card.png',
      //         isActive: false,
      //       ),
      //       BottomNavbarItem(
      //         imageUrl: 'assets/icon_love.png',
      //         isActive: false,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,