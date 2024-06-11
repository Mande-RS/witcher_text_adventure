import 'package:flutter/material.dart';
import 'game_data.dart';

class GameState extends ChangeNotifier {
  int _currentSceneId = 0;

  int get currentSceneId => _currentSceneId;

  Scene get currentScene => scenes[_currentSceneId]!;

  void choose(int nextSceneId) {
    _currentSceneId = nextSceneId;
    notifyListeners();
  }
}
