import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_wallet/widgets/primary_button.dart';
import 'package:e_wallet/widgets/vertical_spacer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 812.h,
        width: 375.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacer(height: 80),
              Text(
                "Signup and start transfering",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const VerticalSpacer(height: 62),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F5),
                      borderRadius: BorderRadius.circular(10.w),
                    ),
                    child: Center(
                      child: Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F5),
                      borderRadius: BorderRadius.circular(10.w),
                    ),
                    child: Center(
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const VerticalSpacer(height: 54),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1.sp,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 24),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 24.sp,
                    color: Colors.black.withOpacity(0.1953),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1.sp,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 24),
              Text(
                "Renter password",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password again",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 24.sp,
                    color: Colors.black.withOpacity(0.1953),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1.sp,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 54),
              PrimaryButton(
                text: "Create account",
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/home'),
              ),
              const VerticalSpacer(height: 24),
              SizedBox(
                width: 375.w,
                child: Text(
                  "Already have account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
