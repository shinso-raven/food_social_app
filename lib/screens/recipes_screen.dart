import 'package:flutter/material.dart';
import 'package:social_food_app/api/api_service.dart';
import 'package:social_food_app/models/simple_recipe.dart';

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

        return Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  simpleRecipe.dishImage,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(simpleRecipe.title,
                  maxLines: 1, style: Theme.of(context).textTheme.bodyLarge)
            ],
          ),
        );
      },
    );
  }
}
