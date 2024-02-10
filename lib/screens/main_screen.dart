import 'package:flutter/material.dart';
import 'package:instagram/screens/activity_screen.dart';
import 'package:instagram/screens/add_post_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedBottomNavidationItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15)
          )
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15)
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedBottomNavidationItem,
            onTap: (int index) {
              setState(() {
                _selectedBottomNavidationItem = index;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff272B40),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_home.png'),
                activeIcon: Image.asset('images/icon_active_home.png'),
                label: '1',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_search_navigation.png'),
                activeIcon: Image.asset('images/icon_search_navigation_active.png'),
                label: '2',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_add_navigation.png'),
                activeIcon: Image.asset('images/icon_add_navigation_active.png'),
                label: '3',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_activity_navigation.png'),
                activeIcon: Image.asset('images/icon_activity_navigation_active.png'),
                label: '4',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color(0xffc5c5c5)
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset('images/bardlur.png'),
                      ),
                    ),
                  ),
                ),
                activeIcon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color(0xfff35383)
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset('images/bardlur.png'),
                      ),
                    ),
                  ),
                ),
                label: '5',
              ),
            ]
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavidationItem,
        children: getLayout(),
      )
    );
  }
  List<Widget> getLayout() {
    return <Widget> [
      HomeScreen(),
      SearchScreen(),
      AddPostScreen(),
      ActivityScreen(),
      UserProfileScreen(),
    ];
  }
}