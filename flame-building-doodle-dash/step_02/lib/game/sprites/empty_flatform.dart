import 'dart:math';

import 'package:doodle_dash/game/sprites/platform.dart';
import 'package:flame/components.dart';

enum EnemyPlatformState { only }                             // Add lines from here...


class EnemyPlatform extends Platform<EnemyPlatformState> {
  EnemyPlatform({super.position});

  @override
  Future<void>? onLoad() async {
    var randBool = Random().nextBool();
    var enemySprite = randBool ? 'enemy_trash_can' : 'enemy_error';

    sprites = <EnemyPlatformState, Sprite>{
      EnemyPlatformState.only:
      await gameRef.loadSprite('game/$enemySprite.png'),
    };

    current = EnemyPlatformState.only;

    return super.onLoad();
  }
}