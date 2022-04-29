import 'dart:math';

import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

class BubbleIndicatorPainter extends CustomPainter {
  BubbleIndicatorPainter({
    this.dxTarget = 100.0,
    this.dxEntry = 25.0,
    this.radius = 21.0,
    this.dy = 25.0,
    this.pageController,
  }) : super(repaint: pageController) {
    painter = Paint()
      ..color = kPrimaryColor
      ..style = PaintingStyle.fill;
  }

  Paint? painter;
  final double dxTarget;
  final double dxEntry;
  final double radius;
  final double dy;

  final PageController? pageController;

  @override
  void paint(Canvas canvas, Size size) {
    final ScrollPosition pos = pageController!.position;
    final double fullExtent = pos.maxScrollExtent - pos.minScrollExtent + pos.viewportDimension;

    final double pageOffset = pos.extentBefore / fullExtent;

    final bool left2right = dxEntry < dxTarget;
    final Offset entry = Offset(left2right ? dxEntry : dxTarget, dy);
    final Offset target = Offset(left2right ? dxTarget : dxEntry, dy);

    final Path path = Path();
    path.addArc(Rect.fromCircle(center: entry, radius: radius), 0.5 * pi, 1 * pi);
    path.addRect(Rect.fromLTRB(entry.dx, dy - radius, target.dx, dy + radius));
    path.addArc(Rect.fromCircle(center: target, radius: radius), 1.5 * pi, 1 * pi);

    canvas.translate(size.width * pageOffset, 0.0);
    canvas.drawShadow(path, Colors.white, 3.0, true);
    canvas.drawPath(path, painter!);
  }

  @override
  bool shouldRepaint(BubbleIndicatorPainter oldDelegate) => true;
}