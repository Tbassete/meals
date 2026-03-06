import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({super.key});
  final Category category;
  const CategoryItem(this.category, {super.key});

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/categories-meals', arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(11),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          gradient: LinearGradient(
            colors: [
              category.color?.withValues(alpha: 0.5) ??
                  const Color.fromARGB(255, 20, 6, 6).withValues(alpha: 0.5),
              category.color ??
                  Color.fromARGB(255, 0, 0, 0).withValues(alpha: 0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title ?? 'sem titulo',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
