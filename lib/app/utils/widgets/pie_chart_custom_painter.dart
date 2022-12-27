import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/app/utils/res/colors.dart';

class PieChartCustomPainter extends CustomPainter {
  final List? categories;

  PieChartCustomPainter({this.categories});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;
    for (var f in categories!) {
      total += f['amount'];
    }
    for (var i = 0; i < categories!.length; i++) {
      final currentCategory = categories![i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
