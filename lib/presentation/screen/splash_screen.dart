import 'package:flutter/material.dart';
import 'package:myflutter/presentation/screen/bmi_calculator_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double>   _fadeAnimation;
  late final Animation<double>   _scaleAnimation;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync:  this,
    duration: Duration(milliseconds: 1200,),
    );


    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _scaleAnimation = Tween<double>(begin: 0.8,end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves. easeOutBack ));

    _controller.forward();
    Future.delayed(Duration(seconds: 3),_naviagtionToHome);


  }

  void  _naviagtionToHome(){
    Navigator.of(context).pushReplacement(
      
      MaterialPageRoute(builder: (context)=> BmiCalculatorScreen()),
      
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child:  FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
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
        ),
      ),
    );
  }
}
