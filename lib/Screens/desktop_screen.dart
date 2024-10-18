
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/color.dart';
import '../Widgets/getScreenGrid.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  double screenWidth = 0.0;
   double rem = 0.0;
  int gs = 1;
  @override
  Widget build(BuildContext context) {
    rem = screenWidth / 1280 * 0.97;
     screenWidth = MediaQuery.of(context).size.width;
    
    gs = getScreenGrid(screenWidth);
    print("gsgs $gs $screenWidth");
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: screenWidth <= 1212?170.w :150.w,
              // color: Colors.white,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/img2.png"),fit: BoxFit.cover)
              ),
              // child: Image.asset("assets/images/img2.png",
             
              ),
            ),
            Positioned(
            top: 100.h,
            bottom: 20.h,
           left: 20.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Under\nMaintainance",style: GoogleFonts.playfairDisplay(fontSize: 14.sp,fontWeight: FontWeight.w500,color: bColor,height: 0),softWrap: true,),
                SizedBox(height: 14,),
                 Text("WE'LL BE BACK SOON",style: GoogleFonts.poppins(fontSize: 7.sp,fontWeight: FontWeight.w400,color: bColor),softWrap: true,),
                 SizedBox(height: 16,),
                 Text("'Undergoing changes but over the moon to\nmake things better for you! Sit tight, we are\nrevamping to serve you even better.'",style: GoogleFonts.poppins(fontSize: 5.sp,fontWeight: FontWeight.w400,color: bColor,height: 1.5),softWrap: true,),
              ],
            )),],
      ),
    );
  }
}