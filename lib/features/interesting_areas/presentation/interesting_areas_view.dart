import 'package:apple_music_genre_animation/features/interesting_areas/widgets/interesting_area_bubbles.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class InterestingAreasView extends StatelessWidget {
  const InterestingAreasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select your interesting areas"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              alignment: Alignment.center,
              child: GameWidget(
                game: InterestingAreaBubbles(),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
