import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaballs/metaballs.dart';

class MetaballsBackground extends StatefulWidget {
  const MetaballsBackground({super.key});

  @override
  State<MetaballsBackground> createState() => _MetaballsBackgroundState();
}

class _MetaballsBackgroundState extends State<MetaballsBackground>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 30), // Animation duration
      vsync: this,
    );
    _animation = Tween<double>(begin: 1, end: 1000.0).animate(_controller);
    _controller.forward();
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Metaballs(
          color: const Color.fromARGB(255, 66, 133, 244),
          effect: MetaballsEffect.follow(
            growthFactor: 1,
            smoothing: 1,
            radius: 0.5,
          ),
          gradient: LinearGradient(
              colors: [
                // Color.fromARGB(255, 90, 60, 255),
                // Color.fromARGB(255, 169, 30, 82),
                // Color.fromARGB(255, 120, 255, 255)

                Color((0xFFFF005B + _animation.value).toInt()),
                Color((0xFFFFe53B + _animation.value).toInt()),

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
    );
  }
}