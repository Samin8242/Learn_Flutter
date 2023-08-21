import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends  StateNotifier<List<Meal>>{
  FavoriteMealsNotifier():super([]);

  bool toggleMealFavoriteStatus(Meal meal){
  final mealIsFavourite =   state.contains(meal);

  if(mealIsFavourite){
    state = state.where((m) => m.id != meal.id).toList();
    return false;
  }
  else{
    state = [...state, meal];
    return true;
  }
    
  }

}
final favoriteMealProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref){
  return FavoriteMealsNotifier();
});