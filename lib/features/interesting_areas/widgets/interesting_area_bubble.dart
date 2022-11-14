import 'package:apple_music_genre_animation/features/interesting_areas/utils/boundaries.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

class InterestingAreaBubble extends BodyComponent with ContactCallbacks {
  final Vector2 _position;

  InterestingAreaBubble(
    this._position,
  );

  @override
  Body createBody() {
    final shape = CircleShape();
    shape.radius = 3.5;

    final fixtureDef = FixtureDef(
      shape,
      restitution: 0.8,
      density: 1.0,
      friction: 0.4,
    );

    final bodyDef = BodyDef(
      userData: this,
      angularDamping: 0.8,
      position: _position,
      type: BodyType.dynamic,
    );

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }

  @override
  Future<void> onLoad() {
    return super.onLoad();
  }

  @override
  void beginContact(Object other, Contact contact) {
    if (other is Wall) {
      body.applyForce(Vector2.random() * 10000);
    }
    if (other is InterestingAreaBubble) {
      body.applyLinearImpulse(Vector2.random() * 50);
    }
    return;
  }
}
