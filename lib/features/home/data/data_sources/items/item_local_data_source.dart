import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/data/models/item_model.dart';

abstract class ItemLocalDataSource {
  Future<List<ItemModel>> getBestSellingItems();
  Future<List<ItemModel>> getNewArrivalItems();
  Future<List<ItemModel>> getRecommendedItems();
}

class ItemLocalDataSourceImpl implements ItemLocalDataSource {
  @override
  Future<List<ItemModel>> getBestSellingItems() async {
    final String jsonString =
        await rootBundle.loadString('assets/dummyData.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    return (jsonData['bestSelling'] as List)
        .map((item) => ItemModel.fromJson(item))
        .toList();
  }

  @override
  Future<List<ItemModel>> getNewArrivalItems() async {
    final String jsonString =
        await rootBundle.loadString('assets/dummyData.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    return (jsonData['newArrival'] as List)
        .map((item) => ItemModel.fromJson(item))
        .toList();
  }

  @override
  Future<List<ItemModel>> getRecommendedItems() async {
    final String jsonString =
        await rootBundle.loadString('assets/dummyData.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    return (jsonData['recommendedForYou'] as List)
        .map((item) => ItemModel.fromJson(item))
        .toList();
  }
}
