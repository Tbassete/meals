import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // const CategoriesMealsScreen({super.key});

  // final Category? category;
  // const CategoriesMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    // ModalRoute.of(context) pode ser null; .settings.arguments também pode ser null.
    final route = ModalRoute.of(context);
    final args = route?.settings.arguments;

    // Tenta converter os args para Category; se não for possível, usa null (ou você pode fornecer fallback).
    final Category? category = args is Category ? args : null;

    return Scaffold(
      appBar: AppBar(
        title: Text(category?.title ?? 'aqui era para ter um titulo :('),
        backgroundColor: (category?.color ?? Colors.amber).withValues(
          alpha: 0.9,
        ),
      ),
      body: Center(
        child: Text(
          'Receitas por categoria ${category?.id ?? 'era para ter um id aqui :('}',
        ),
      ),
    );
  }
}
