// import 'package:activity_3/DetailPlaylist.dart';
import 'package:activity_3/PlaylistScreen.dart';
import 'package:activity_3/ProfileScreen.dart';
import 'package:activity_3/SongList.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectIndex = 0;

  List<Widget> _screenList = [
    PlaylistScreen(),
    SongList(),
    ProfileScreen(),
  ];

  void change(int Index) {
    setState(() {
      _selectIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          backgroundColor: Colors.green,
          fixedColor: Colors.white,
          onTap: change,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Playlist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: 'Music'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
