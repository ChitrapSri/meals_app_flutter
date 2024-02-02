import 'package:meals_app/models/meal.dart';
import 'package:riverpod/riverpod.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state = state.where((m) => meal.id != m.id).toList();
    }
    else{
      state = [...state, meal];
    }

  }
}

final favoriteMealsProvider = StateNotifierProvider((ref) => null);
