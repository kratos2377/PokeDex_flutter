import 'package:flutter/material.dart';

import './models/category.dart';
import './models/pokemon.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'fire',
    title: 'Fire',
    color: Colors.orange,
  ),

   Category(
    id: 'water',
    title: 'Water',
    color: Colors.blue,
  ),

   Category(
    id: 'grass',
    title: 'Grass',
    color: Colors.greenAccent,
  ),

   Category(
    id: 'electric',
    title: 'Electric',
    color: Colors.yellow,
  ),
   Category(
    id: 'steel',
    title: 'Steel',
    color: Colors.grey,
  ),
   Category(
    id: 'rock',
    title: 'Rock',
    color: Colors.brown,
  ),
   Category(
    id: 'ghost',
    title: 'Ghost',
    color: Colors.deepPurple,
  ),
   Category(
    id: 'psychic',
    title: 'Psychic',
    color: Colors.purple,
  ),
   Category(
    id: 'dark',
    title: 'Dark',
    color: Colors.black54,
  ),
   Category(
    id: 'poison',
    title: 'Poison',
    color: Colors.pinkAccent,
  ),
   Category(
    id: 'ice',
    title: 'Ice',
    color: Colors.lightBlueAccent,
  ),
   Category(
    id: 'bug',
    title: 'Bug',
    color: Colors.green,
  ),

];

const DUMMY_POKEMONS = const [

  Pokemon(
    id: 'p1', 
  types: [
    'fire'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 
  name: 'Charmander',
  characterstics: [
    'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.',
    'From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.'
  ], level: 1, height: 2.00, weight: 18.7, ability: [ 'Blaze']),

    Pokemon(
    id: 'p2', 
  types: [
    'fire'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png', 
  name: 'Charmeleon',
  characterstics: [
    'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.',
   'If it becomes agitated during battle, it spouts intense flames, incinerating its surroundings.'
  ], level: 2, height: 3.07, weight: 41.9, ability: [ 'Blaze']),

    Pokemon(
    id: 'p3', 
  types: [
    'fire'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 
  name: 'Charizard',
  characterstics: [
    'It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.',
    'Its wings can carry this Pokémon close to an altitude of 4,600 feet. It blows out fire at very high temperatures.'
  ], level: 3, height: 5.07, weight: 199.5, ability: [ 'Blaze']),

  Pokemon(
    id: 'p4', 
  types: [
    'water'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png', 
  name: 'Squirtle',
  characterstics: [
    'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
    'When it feels threatened, it draws its limbs inside its shell and sprays water from its mouth.'
  ], level: 1, height: 1.08, weight: 19.8, ability: [ 'Torrent']),

  Pokemon(
    id: 'p5', 
  types: [
    'water'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png', 
  name: 'Wartortle',
  characterstics: [
    'It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.',
    'It cleverly controls its furry ears and tail to maintain its balance while swimming.'
  ], level: 2, height: 3.03, weight: 49.6, ability: [ 'Torrent']),

  Pokemon(
    id: 'p6', 
  types: [
    'water'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', 
  name: 'Blastoise',
  characterstics: [
    'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.',
    'The rocket cannons on its shell fire jets of water capable of punching holes through thick steel.'
  ], level: 3, height: 5.03, weight: 188.5, ability: [ 'Torrent']),

  Pokemon(
    id: 'p7', 
  types: [
    'water',
    'ice'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/087.png', 
  name: 'Dewgong',
  characterstics: [
    'Its entire body is a snowy white. Unharmed by even intense cold, it swims powerfully in icy waters.',
    'Its entire body is a snowy white. Unharmed by even intense cold, it swims powerfully in icy waters.'
  ], level: 2, height: 5.07, weight: 264.6, ability: [ 'Thick Fat' , 'Hydration']),

  Pokemon(
    id: 'p7', 
  types: [
    'water',
    'psychic'
  ], imageUrl: 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/079.png', 
  name: 'Slowpoke',
  characterstics: [
    'Slow-witted and oblivious, this Pokémon won’t feel any pain if its tail gets eaten. It won’t notice when its tail grows back, either.',
    'When this Pokémon’s tail is soaked in water, sweetness seeps from it. Slowpoke uses this trait to lure in and fish up other Pokémon.'
  ], level: 1, height: 3.11, weight: 79.4, ability: [ 'Oblivious' , 'Own Tempo']),

  

];