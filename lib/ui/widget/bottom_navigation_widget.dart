import 'package:flutter/material.dart';
import 'package:gank/ui/page/page_category.dart';
import 'package:gank/ui/page/page_favorite.dart';
import 'package:gank/ui/page/page_gallery.dart';
import 'package:gank/ui/page/page_history.dart';
import 'package:gank/ui/page/page_main.dart';

class BottomNavigationWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  var _bottomNavigationColor = Colors.lightBlueAccent;
  int _currentIndex = 0;
  List<Widget> list = List();


  @override
  void initState() {
    list
      ..add(MainScreen())
      ..add(GalleryScreen())
      ..add(HistoryScreen())
      ..add(CategoryScreen())
      ..add(FavoriteScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.image,
              ),
              title: Text(
                'Girls',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              title: Text(
                'History',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              title: Text(
                'Category',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              title: Text(
                'Favorite',
              )
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: _bottomNavigationColor,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}