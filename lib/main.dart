import 'package:Pokedex/screen/pokemon_details_screen.dart';
import 'package:Pokedex/screen/pokemon_screen.dart';
import 'package:flutter/material.dart';
import './screen/tabs_screen.dart';
import './screen/categories_screen.dart';

void main(){
  runApp(PokeDex());
}

class PokeDex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poke Dex',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        PokemonScreen.routeName: (ctx) => PokemonScreen(),
        PokemonDetailsScreen.routeName: (ctx) => PokemonDetailsScreen(),
        
      },
    );
  }
}

