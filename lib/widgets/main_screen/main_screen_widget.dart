// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../movie_list/movie_list_widget.dart';

class MianScreenWidget extends StatefulWidget {
  const MianScreenWidget({Key? key}) : super(key: key);

  @override
  State<MianScreenWidget> createState() => _MianScreenWidgetState();
}

class _MianScreenWidgetState extends State<MianScreenWidget> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Новости',
    ),
    MovieListWidget(),
    Text(
      'Сериалы',
    ),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Сериалы',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
