import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'game_logic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameState(),
      child: MaterialApp(
        title: 'The Witcher - A Aventura em Texto',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GameScreen(),
      ),
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Witcher - A Aventura em Texto'),
      ),
      body: Consumer<GameState>(
        builder: (context, gameState, child) {
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    gameState.currentScene.description,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ...gameState.currentScene.choices.map((choice) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      gameState.choose(choice.nextSceneId);
                    },
                    child: Text(choice.description),
                  ),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}
