import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momfirst_comingsoon_page/Utils/color.dart';

import '../Widgets/getScreenGrid.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  double screenWidth = 0.0;
   double rem = 0.0;
  int gs = 1;
  @override
  Widget build(BuildContext context) {
    rem = screenWidth / 1280 * 0.97;
     screenWidth = MediaQuery.of(context).size.width;
    
    gs = getScreenGrid(screenWidth);
    print("gsgs $gs $screenWidth");
    return Container(
      color: bgColor,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
         Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width:screenWidth<=832?250.w: (screenWidth<=915? 220.w: (screenWidth<=1065?200.w: 170.w)),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/img2.png"),fit: BoxFit.cover)
              ),
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
                Text("Under\nMaintainance",style: GoogleFonts.playfairDisplay(fontSize: 14.sp,fontWeight: FontWeight.w500,color: bColor,height: 0,decoration: TextDecoration.none),softWrap: true,),
                
                SizedBox(height: 14,),
                 Text("WE'LL BE BACK SOON",style: GoogleFonts.poppins(fontSize: 7.sp,fontWeight: FontWeight.w400,color: bColor,decoration: TextDecoration.none),softWrap: true,),
                 SizedBox(height: 16,),
                 Text("'Undergoing changes but over the moon to\nmake things better for you! Sit tight, we are revamping\nto serve you even better.'",style: GoogleFonts.poppins(fontSize: screenWidth<=750? 7.sp: 5.sp,fontWeight: FontWeight.w400,color: bColor,height: 1.5,decoration: TextDecoration.none),softWrap: true,),
              ],
            )),],
      ),
    );
  }
}