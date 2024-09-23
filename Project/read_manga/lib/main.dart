import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/search_page.dart';
import 'screens/comment_page.dart';
import 'screens/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static bool? isDarkModeEnabled;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    //FollowPage(),
    CommentPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Colors.purpleAccent,
            height: 2,
          ),
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
              });
            },
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.purpleAccent,
            backgroundColor: Colors.blue,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Trang chủ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Tìm kiếm',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.favorite),
              //   label: 'Theo dõi',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Bình luận',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Cài đặt',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
