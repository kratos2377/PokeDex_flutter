import 'package:Pokedex/models/pokemon.dart';
import 'package:flutter/material.dart';
import '../poke_dummy_data.dart';
import '../widget/poke_item.dart';


class PokemonScreen extends StatefulWidget {

   static const routeName = '/pokemon-screen';

  @override
  _PokemonScreenState createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {


   
  var _colorPick = 
     {'Fire': Colors.orange,
     'Water': Colors.blue,
     'Grass': Colors.greenAccent,
     'Electric': Colors.yellow,
     'Steel': Colors.grey,
     'Rock': Colors.brown,
     'Ghost': Colors.deepPurple,
     'Psychic': Colors.purple,
     'Dark': Colors.black54,
     'Poison': Colors.pinkAccent,
     'Ice': Colors.lightBlueAccent,
     'Bug': Colors.green
     };
   
   
   String categoryTitle;
   List<Pokemon> _displayedPoke;

  @override
  void didChangeDependencies() {
    final resultArgs = ModalRoute.of(context).settings.arguments as Map<String , String>;
     categoryTitle = resultArgs['title'];
     String idPoke = resultArgs['id'];
      List<Pokemon> checkList = DUMMY_POKEMONS;
      
     _displayedPoke = checkList.where( (poke) {
       return poke.types.contains(idPoke);
     } ).toList();
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
       body: ListView.builder(itemBuilder: (ctx , index) {
         return PokemonItem(_displayedPoke[index].name, _displayedPoke[index].height, _displayedPoke[index].weight, 
         _displayedPoke[index].imageUrl, _displayedPoke[index].level , _colorPick[categoryTitle] , _displayedPoke[index].id);
       },
       itemCount: _displayedPoke.length,
       ),
       
       
      
      );
  }
}