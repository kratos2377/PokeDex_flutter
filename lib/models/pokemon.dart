import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class Pokemon{

  final String id;
  final List<String> types;
  final String imageUrl;
  final String name;
  final List<String> characterstics;
  final int level;
  final double height;
  final double weight;
  final List<String> ability;

  const Pokemon({ @required this.id, @required this.types , @required this.imageUrl, @required this.name ,
   @required this.characterstics, @required this.level,
  @required this.height , @required this.weight,  @required this.ability});



}