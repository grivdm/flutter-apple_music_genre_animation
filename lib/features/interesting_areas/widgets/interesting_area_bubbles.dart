import 'package:apple_music_genre_animation/features/interesting_areas/utils/boundaries.dart';
import 'package:apple_music_genre_animation/features/interesting_areas/utils/follow_body.dart';
import 'package:apple_music_genre_animation/features/interesting_areas/widgets/interesting_area_bubble.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

class InterestingAreaBubbles extends Forge2DGame with HasTappables {
  @override
  Color backgroundColor() =>
      Colors.blue; //add the colour that you need as background colour

  InterestingAreaBubbles() : super(gravity: Vector2(0, -1));

  @override
  Future<void>? onLoad() {
    final boundaries = createBoundaries(this);
    for (var element in boundaries) {
      add(element);
    }
    for (var i = 0; i < 10; i++) {
      final bubble = InterestingAreaBubble(
        size / 2 + Vector2(i.toDouble(), i.toDouble()),
      );
      final textComponent = TextComponent(
        text: i.toString(),
        textRenderer: TextPaint(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 1.5,
          ),
        ),
        anchor: Anchor.center,
        size: Vector2.all(7),
      );
      add(bubble);
      add(FollowBody(bubble, textComponent));
    }
    return null;
  }
}
