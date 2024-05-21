import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaballs/metaballs.dart';

class MetaballsBackground extends StatelessWidget {
  const MetaballsBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Metaballs(
      color: const Color.fromARGB(255, 66, 133, 244),
      effect: MetaballsEffect.follow(
        growthFactor: 1,
        smoothing: 1,
        radius: 0.5,
      ),
      gradient: const LinearGradient(
          colors: [
            // Color.fromARGB(255, 90, 60, 255),
            // Color.fromARGB(255, 169, 30, 82),
            // Color.fromARGB(255, 120, 255, 255)

            Color(0xFFFF005B),
            Color(0xFFFFe53B),

          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft
      ),
      metaballs: 40,
      animationDuration: const Duration(milliseconds: 200),
      speedMultiplier: 1,
      bounceStiffness: 3,
      minBallRadius: 15,
      maxBallRadius: 40,
      glowRadius: 0.7,
      glowIntensity: 0.6,
    );
  }
}