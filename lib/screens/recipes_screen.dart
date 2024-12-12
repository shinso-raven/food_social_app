import 'package:flutter/material.dart';
import 'package:social_food_app/api/api_service.dart';
import 'package:social_food_app/models/simple_recipe.dart';

import '../components/recipe_thumbnail.dart';

class RecipesScreen extends StatelessWidget {
  RecipesScreen({super.key});

  final apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    // return Center(child: Card2());
    return FutureBuilder(
        future: apiService.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          }

          return RecipesGrid(recipes: snapshot.data ?? []);
        });
  }
}

class RecipesGrid extends StatelessWidget {
  RecipesGrid({super.key, required this.recipes});

  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final simpleRecipe = recipes[index];

        return RecipeThumbnail(simpleRecipe: simpleRecipe);
      },
    );
  }
}
