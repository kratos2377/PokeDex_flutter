import 'package:Pokedex/screen/pokemon_details_screen.dart';
import 'package:flutter/material.dart';


class PokemonItem extends StatelessWidget {
  
  final String id;
  final String name;
  final double height;
  final double weight;
  final String imgUrl;
  final int level;
  final Color color;

   PokemonItem(this.name, this.height, this.weight, this.imgUrl, this.level , this.color , this.id) ;


   void selectPoke(BuildContext context){
    Navigator.of(context).pushNamed( PokemonDetailsScreen.routeName , arguments: id );
   }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPoke(context),
      child: Card(
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Column(
          children: <Widget>[
          Stack(
             children: <Widget>[
                ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
              ),
              child: Image.network(imgUrl , fit: BoxFit.cover, width: double.infinity, height: 350,),
              
            ),

            Positioned(
              bottom: 20,
              right: 30,
              child: Container(
                width: 150,
                padding: EdgeInsets.all(10),
                color: Colors.black54,
                child: Text(name , style: TextStyle( fontWeight: FontWeight.bold , color: Colors.white , ),
                textAlign: TextAlign.center,),
              ),
            )
             ],


         ),

         Container(
           color: color,
                    child: Padding(
             
             padding: EdgeInsets.all(15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[

                 Row(children: <Widget>[
                   Text("Height: "),
                   SizedBox(width:6),
                   Text(height.toString()),
                 ],),   

                 Row(children: <Widget>[
                   Text("Weight: "),
                   SizedBox(width:6),
                   Text('${weight.toString()} lbs'),
                 ],), 

                 Row(children: <Widget>[
                   Text("Level: "),
                   SizedBox(width:6),
                   Text(level.toString()),
                 ],),          

             ],),
           ),
         )
            
            

          ],

        ),
      ),
    );
  }
}