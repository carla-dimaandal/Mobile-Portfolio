import 'package:carla_tabs/widgets/contact.dart';
import 'package:carla_tabs/widgets/educ.dart';
import 'package:carla_tabs/widgets/interests.dart';
import 'package:carla_tabs/widgets/profile.dart';
import 'package:carla_tabs/widgets/skills.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 139, 57, 189),
        hintColor: Color.fromARGB(255, 70, 0, 117),
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          iconTheme: IconThemeData(color: Colors.white), // Example color
          bottom: TabBar(
            indicatorColor: Colors.white, // Color of the indicator line
            labelColor: Colors.white, // Color of the selected tab label
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.menu_book),
                text: 'Education',
              ),
              Tab(
                icon: Icon(Icons.lightbulb),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.thumb_up),
                text: 'Interests',
              ),
              Tab(
                icon: Icon(Icons.contact_page),
                text: 'Contact',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ProfileTab(),
            EducTab(),
            SkillsTab(),
            InterestsTab(),
            ContactTab(),
          ],
        ),
      ),
    );
  }
}
