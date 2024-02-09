import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meals_str.dart';

class FavoriteMealsNotifier extends StateNotifier<List<MealsStr>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteState(MealsStr meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<MealsStr>>((ref) {
  return FavoriteMealsNotifier();
});
