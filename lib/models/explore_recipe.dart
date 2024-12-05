part 'ingredient.dart';
part 'instruction.dart';

class CardTypes {
  static const Card1 = "card1";
  static const Card2 = "card2";
  static const Card3 = "card3";
}

class ExploreRecipe {
  final String id;
  final String cardType;
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String backgroundImageSource;
  final String message;
  final String authorName;
  final String role;
  final String authorImage;
  final int durationInMinutes;
  final String dietType;
  final int calories;
  final List<String> tags;
  final String description;
  final String source;
  final List<Ingredient> ingredients;
  final List<Instruction> instructions;

  ExploreRecipe({
    required this.id,
    required this.cardType,
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.backgroundImageSource,
    required this.message,
    required this.authorName,
    required this.role,
    required this.authorImage,
    required this.durationInMinutes,
    required this.dietType,
    required this.calories,
    required this.tags,
    required this.description,
    required this.source,
    required this.ingredients,
    required this.instructions,
  });

  factory ExploreRecipe.fromJson(Map<String, dynamic> json) => ExploreRecipe(
        id: json["id"],
        cardType: json["cardType"],
        title: json["title"],
        subtitle: json["subtitle"],
        backgroundImage: json["backgroundImage"],
        backgroundImageSource: json["backgroundImageSource"],
        message: json["message"],
        authorName: json["authorName"],
        role: json["role"],
        authorImage: json["authorImage"],
        durationInMinutes: json["durationInMinutes"],
        dietType: json["dietType"],
        calories: json["calories"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        description: json["description"],
        source: json["source"],
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        instructions: List<Instruction>.from(
            json["instructions"].map((x) => Instruction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cardType": cardType,
        "title": title,
        "subtitle": subtitle,
        "backgroundImage": backgroundImage,
        "backgroundImageSource": backgroundImageSource,
        "message": message,
        "authorName": authorName,
        "role": role,
        "authorImage": authorImage,
        "durationInMinutes": durationInMinutes,
        "dietType": dietType,
        "calories": calories,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "description": description,
        "source": source,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "instructions": List<dynamic>.from(instructions.map((x) => x.toJson())),
      };
}
