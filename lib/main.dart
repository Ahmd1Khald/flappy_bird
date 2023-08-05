import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'flappy_bird_game.dart';
import 'game_over_page.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(
      game: game,
      overlayBuilderMap: {
        'gameOver': (context, _) => GameOverPage(game: game),
      },
    ),
  );
}
