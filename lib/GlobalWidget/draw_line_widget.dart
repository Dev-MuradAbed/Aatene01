import 'package:flutter/material.dart';
class DrawLineWidget extends StatelessWidget {
  const DrawLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: CustomPaint(
        size: Size(double.infinity, 3),
        painter: GradientLinePainter(),
      ),
    );
  }
}
class GradientLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerRight,  // Align gradient to start from the center-right
        end: Alignment.centerLeft,    // End gradient at the center-left
        colors: [
          Color.fromRGBO(255, 255, 255, 0.3),
          Color.fromRGBO(67, 104, 160, 0),
        ],
        stops: [0, 1],
        transform: GradientRotation(270),
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawLine(Offset(size.width, size.height / 2), Offset(0, size.height / 2), paint);  // Draw line from right to left
  }

  @override
  bool shouldRepaint(GradientLinePainter oldDelegate) => false;
}
