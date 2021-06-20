import 'package:flutter/material.dart';
import '../screen/pokemon_screen.dart';

class CategoryItem extends StatelessWidget {

  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id , this.title , this.color);


  void _selected(BuildContext ctx){
     
     Navigator.of(ctx).pushNamed(PokemonScreen.routeName , arguments: { 'id': id , 'title': title});
  }



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selected(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(title , style: TextStyle( fontWeight: FontWeight.bold , fontSize: 25 ),),
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            color.withOpacity(0.8),
            color
          ],

          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
         borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}