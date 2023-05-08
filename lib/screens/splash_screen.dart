import 'package:flutter/material.dart';
import 'package:fundi_sawa/utils/colors.dart'as app_colors;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadScreen();
  }

  Future<void> _loadScreen() async {
    await Future.delayed(Duration(seconds: 3)); // add a delay of 3 seconds

    Navigator.pushNamed(context, '/on_boarding_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: app_colors.backgroundColor,
      child: Stack(
        children: [
          CustomPaint(
            painter: ArcPainter(),
            child: Container(),
          ),
          Center(
            child: Image.asset(
              'assets/images/fundisawalogo.png', // Replace with your image asset path
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white; // Replace with desired color

    Path path = Path();
    path.moveTo(0, size.height * 0.45);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.4, size.width * 0.75, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
