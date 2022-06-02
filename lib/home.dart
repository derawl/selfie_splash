import 'package:flutter/material.dart';
import 'screens/main_activity/ads_page.dart';
import 'screens/main_activity/home_page.dart';
import 'screens/main_activity/profile_page.dart';
import 'screens/main_activity/selfie_of_the_week_page.dart';
import 'screens/main_activity/whats_on_page.dart';
import 'screens/search/search.dart';
import 'screens/profile_menus/profile_menu.dart';
import 'screens/inbox/notifications.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.blue, width: 1))
            ),
            child: TabBar(
              labelColor: Colors.blue,
              padding: EdgeInsets.all(5),
              unselectedLabelColor: Colors.grey,
              indicator: MaterialIndicator(
                height: 3,
                color: Colors.blue,
                topLeftRadius: 8,
                topRightRadius: 8,
                horizontalPadding: 20,
                tabPosition: TabPosition.bottom,
              ),
              tabs: [
                Tab(icon: Icon(Icons.home, size: 30),),
                Tab(icon: Icon(Icons.favorite, size: 30),),
                Tab(icon: Icon(Icons.star, size: 30),),
                Tab(icon: Icon(Icons.search, size: 30),),
                Tab(icon: Icon(Icons.person, size: 30),),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              SelfieOfTheWeekPage(),
              WhatsOnPage(),
              AdsPage(),
              ProfilePage()

            ],
          ),
        ),
      ),
    );
  }
}
