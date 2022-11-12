import 'package:flame_forge2d/flame_forge2d.dart';

class InterestingAreaBubble extends BodyComponent {
  final Vector2 _position;

  InterestingAreaBubble(
    this._position,
  );

  @override
  Body createBody() {
    final shape = CircleShape();
    shape.radius = 5;

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
}
