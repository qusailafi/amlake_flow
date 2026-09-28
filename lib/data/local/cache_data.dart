import 'package:shared_preferences/shared_preferences.dart';

class CacheDataManager {
  // Fetch a string value
  static Future<String> getStringData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? ""; // Use null-coalescing operator
  }

  // Fetch a boolean value
  static Future<bool> getBoolean(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false; // Use null-coalescing operator
  }
  static  saveCategory(String category)async{
    final prefs = await SharedPreferences.getInstance();
      prefs.setString("category", category);
  }
  static  getCategory()async{
    final prefs = await SharedPreferences.getInstance();
  return  prefs.getString("category")??"";
  }
  // Save a string value
  static Future<void> putStringData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Clear all data
  static Future<void> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  // Save a boolean value
  static Future<void> putBooleanData(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static const _key = 'favorite_video_ids';
  static const String _key1 = "noIntersted";

 static  Future<Set<String>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(_key) ?? [];
    return ids.toSet();
  }
  static  Future<Set<String>> getNotInterstedCategories() async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(_key1) ?? [];
    return ids.toSet();
  }
  static  Future<void> noInterstedCategories(String categoryName ) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = (prefs.getStringList(_key1) ?? []).toSet();

    if (favorites.contains(categoryName)) {
      favorites.remove(categoryName);
    } else {
      favorites.add(categoryName);
    }

    await prefs.setStringList(_key1, favorites.toList());
  }
  static  Future<void> toggleFavorite(String videoId ) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = (prefs.getStringList(_key) ?? []).toSet();

    if (favorites.contains(videoId)) {
      favorites.remove(videoId);
    } else {
      favorites.add(videoId);
    }

    await prefs.setStringList(_key, favorites.toList());
  }
static List <String>splitVideoInfo(String items)   {
  List<String> parts = items.split(';');


return parts;
}
 static  Future<bool> isFavorite(String videoId) async {
    final favorites = await getFavorites();
    return favorites.contains(videoId);
  }
}
