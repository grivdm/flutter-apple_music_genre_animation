import 'package:apple_music_genre_animation/features/interesting_areas/widgets/interesting_area_bubble.dart';
import 'package:flame/components.dart';

class FollowBody extends PositionComponent {
  FollowBody(
    this.bubbleComponent,
    this.childrenTextComponent,
  ) {
    add(childrenTextComponent);
  }
  final InterestingAreaBubble bubbleComponent;
  final TextComponent childrenTextComponent;

  @override
  void update(double dt) {
    position = bubbleComponent.body.position;
  }
}
