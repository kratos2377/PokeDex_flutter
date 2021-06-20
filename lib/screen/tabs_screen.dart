import 'package:Pokedex/screen/categories_screen.dart';
import 'package:Pokedex/screen/teams_screen.dart';
import 'package:flutter/material.dart';
import '../screen/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

 

  final List<Map<String , Object>> _pages = [
   {'page' : CategoriesScreen() , 'title': "Categories"},
   {'page' : FavoritesScreen() , 'title': "Favorites"},
   {'page' : TeamsScreen() , 'title': "Pokemon Teams"},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index){

    setState(() {
      _selectedPageIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title'])),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.red,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category) , title: Text("Categories"), backgroundColor: Colors.red),
           BottomNavigationBarItem(icon: Icon(Icons.favorite) , title: Text("Favorites"), backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.sports) , title: Text("Pokemon Team"), backgroundColor: Colors.red),
        ],
        ),
    );
  }
}