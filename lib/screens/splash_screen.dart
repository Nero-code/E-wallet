import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> nav(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    nav(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SizedBox(
          width: 106.w,
          height: 137.h,
          child: FittedBox(
            child: Image.asset('assets/images/Logo.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
