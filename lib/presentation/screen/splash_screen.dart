import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15),
                shape: .circle,
              ),
              child: Icon(
                Icons.monitor_weight_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),

            Text(
              'Bmi Calculator',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: .bold,
                letterSpacing: 1.2,
              ),
            ),

            Text(
              'Know your body, know yourself',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.5),
                fontWeight: .w600,
                letterSpacing: .5,
              ),
            ),

            SizedBox(height: 20),

            // CircularProgressIndicator(
            //   color: Colors.white.withValues(alpha: 0.5),
            // ),


          ],
        ),
      ),
    );
  }
}
