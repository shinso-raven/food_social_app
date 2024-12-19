import 'package:flutter/material.dart';

enum Importance {
  low,
  medium,
  high,
}

class GroceryItem {
  final String id;
  final String name;
  final String Importance;
  final Color color;
  final int quantity;
  final DateTime date;
  final bool isCompleted;

  GroceryItem(
      {required this.id,
      required this.name,
      required this.Importance,
      required this.color,
      required this.quantity,
      required this.date,
      this.isCompleted = false});

  GroceryItem copyWith(
      {final String? id,
      final String? name,
      final String? Importance,
      final Color? color,
      final int? quantity,
      final DateTime? date,
      final bool? isCompleted}) {
    return GroceryItem(
        id: id ?? this.id,
        name: name ?? this.name,
        Importance: Importance ?? this.Importance,
        color: color ?? this.color,
        quantity: quantity ?? this.quantity,
        isCompleted: isCompleted ?? this.isCompleted,
        date: date ?? this.date);
  }
}
