import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Buy your dream house",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 5.0,
                      percent: 0.5, // Set your desired percentage
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\$2500",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.green,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:20.sp,bottom: 8.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildDot(1,context),
                      buildDot(2,context),
                      buildDot(3,context),
                      buildDot(4,context),
                      buildDot(5,context),
                    ],
                  ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      width: 1.5.w,
      height: 0.8.h,
      decoration: BoxDecoration(
        color: index ==1?Colors.white:Colors.white38,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
