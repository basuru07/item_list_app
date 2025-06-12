import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../models/item.dart';

class ItemProvider with ChangeNotifier {
  List<Item> _items = [];
  bool _isLoading = false;
  String? _error;

  List<Item> get items => _items;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadItems() async {
    _isLoading = true;

    try {
      final String response = await rootBundle.loadString('assets/data.json');
      final List<dynamic> data = jsonDecode(response);
      _items = data.map((json) => Item.fromJson(json)).toList();
      _error = null;
    } catch (e) {
      _error = 'Failed to load items: $e';
      _items = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
