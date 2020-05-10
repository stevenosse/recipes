import 'package:flutter/material.dart';

class FooterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0XFFFF9100);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);

    var subPaint = Paint();
    subPaint.color = Colors.orangeAccent;
    subPaint.style = PaintingStyle.fill;

    var subPath = Path();

    subPath.moveTo(size.width * 0.5, size.height * 0.9167);
    subPath.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    subPath.quadraticBezierTo(size.width * 0.75, size.height * 0.8504,
        size.width * 1.0, size.height * 0.86);
    subPath.lineTo(size.width, size.height);
    subPath.lineTo(size.width * 0.5, size.height);

    canvas.drawPath(subPath, subPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
