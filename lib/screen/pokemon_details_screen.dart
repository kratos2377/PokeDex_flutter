import 'package:flutter/material.dart';
import '../poke_dummy_data.dart';
import '../models/pokemon.dart';

class PokemonDetailsScreen extends StatelessWidget {

  static const routeName = "/pokemon-details";

 
  Widget buildTextTile(String text){

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ),)
    );

  }

  Widget buildListTile(Widget child){

    return Container(
        decoration: BoxDecoration(color: Colors.white , border: Border.all(color: Colors.grey),
               borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 300,
      child: child,
    );

  }

    var _colorPick = 
     {'fire': Colors.orange,
     'water': Colors.blue,
     'grass': Colors.greenAccent,
     'electric': Colors.yellow,
     'steel': Colors.grey,
     'rock': Colors.brown,
     'ghost': Colors.deepPurple,
     'psychic': Colors.purple,
     'dark': Colors.black54,
     'poison': Colors.pinkAccent,
     'ice': Colors.lightBlueAccent,
     'bug': Colors.green
     };



  @override
  Widget build(BuildContext context) {
     final pokeId = ModalRoute.of(context).settings.arguments as String;
     final selectedPoke = DUMMY_POKEMONS.firstWhere((poke) => poke.id == pokeId); 
    return Scaffold(
      appBar: AppBar(title: Text(selectedPoke.name) , centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
         children: <Widget>[
           Container(
             width: double.infinity,
             height: 350,
             child: Image.network(selectedPoke.imageUrl , fit: BoxFit.cover)
           ),
           buildTextTile("Details"),
           Center(
              child: Container(
              
               color: _colorPick[selectedPoke.types[0]],
               margin: EdgeInsets.all(20),
               padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
               child: Stack(

                 children: <Widget>[
                 

                   Positioned(child: Text("Height: ${selectedPoke.height}" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                    top: 20,
                    left: 15,
                   ),

                   Positioned(child: Text("Weight: ${selectedPoke.weight}" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                    top: 60,
                    left: 15,
                   ),

                   Positioned(child: Text("Level: ${selectedPoke.level}" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                    top: 20,
                    right: 30,
                   ),

                   Positioned(child: Text("Abilites:\n" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                    top: 60,
                    right: 30,
                   ),
                   
                   Positioned(
                     top: 90,
                     right: 25,
                     child: Column(children: [
                     for(var i in selectedPoke.ability) Text("->"+ i.toString()+"\n" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold))
                   ],))
                 ],

               )
             ),
           ),
           buildTextTile("Characterstics"),
           buildListTile(ListView.builder(itemBuilder: (ctx , index) => Column(
             children: <Widget>[
               ListTile(
                 leading: CircleAvatar(child: Text("${index+1}"),),
                 title: Text(selectedPoke.characterstics[index]),
               ),
               Divider()
             ]
           ),
           itemCount: selectedPoke.characterstics.length,
           )
           
           ),
           
         ],
      ),
      
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.favorite), ),

    );
  }
}