import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class IllustrarionWidget extends StatelessWidget {
  IllustrarionWidget({
    Key? key,
    required this.illustration,
    required this.color,
  }) : super(key: key);

  final UnDrawIllustration illustration;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return UnDraw(
      color: color,
      illustration: illustration,
      errorWidget: const Icon(Icons.error_outline, color: Colors.red, size: 50),
    );
  }
}
