import 'package:doodle_dash/game/sprites/platform.dart';
import 'package:flame/components.dart';

enum BrokenPlatformState { cracked, broken }                // Add lines from here...

class BrokenPlatform extends Platform<BrokenPlatformState> {
  BrokenPlatform({super.position});

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    sprites = <BrokenPlatformState, Sprite>{
      BrokenPlatformState.cracked:
      await gameRef.loadSprite('game/platform_cracked_monitor.png'),
      BrokenPlatformState.broken:
      await gameRef.loadSprite('game/platform_monitor_broken.png'),
    };

    current = BrokenPlatformState.cracked;
    size = Vector2(115, 84);
  }

  void breakPlatform() {
    current = BrokenPlatformState.broken;
  }
}