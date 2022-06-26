import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdpui_instagram/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _State();
}

class _State extends State<HomePage> {
  int currentPage = 0;
  final List<Widget> _pages = [
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        brightness: Brightness.dark,
        centerTitle: true,
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.grey),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Feather.camera),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Feather.tv),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.send_o),
            color: Colors.grey,
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Foundation.home), label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Feather.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Feather.plus_square), label: "Upload"),
          BottomNavigationBarItem(icon: Icon(Feather.heart), label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Feather.user), label: "Account"),
        ],
      ),
    );
  }
}
