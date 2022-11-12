import 'package:apple_music_genre_animation/features/interesting_areas/utils/boundaries.dart';
import 'package:apple_music_genre_animation/features/interesting_areas/widgets/interesting_area_bubble.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

class InterestingAreaBubbles extends Forge2DGame {
  @override
  Color backgroundColor() =>
      Colors.blue; //add the colour that you need as background colour

  @override
  Future<void>? onLoad() {
    final boundaries = createBoundaries(this);
    for (var element in boundaries) {
      add(element);
    }
    for (var i = 0; i < 10; i++) {
      add(InterestingAreaBubble(
          size / 2 + Vector2(i.toDouble(), i.toDouble())));
      print(i);
    }
    return null;
  }
}
