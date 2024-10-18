import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momfirst_comingsoon_page/Utils/color.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SafeArea(
    //     child: Container(
    //       color: bgColor,
    //       height: 300.h,
    //       child: Stack(
    //         children: [
    //           Positioned(
    //                   top: 0,
    //                   bottom: 0,
    //                   left: 0,
    //                   right: 0,
    //                   child: Image.asset("assets/images/img2.png")),
    //                   Positioned(child: Container(
    //                     height: 300.h,
    //                   )),
    //                    Positioned(
    //         top: 0,
    //         bottom: 0,
    //         right: 0,
    //         child: Container(
    //           height: MediaQuery.of(context).size.height,
    //           width: MediaQuery.of(context).size.width,
    //           decoration: BoxDecoration(
    //             gradient: LinearGradient(colors: [
    //               Colors.transparent,
    //               bgColor.withOpacity(0.4),
    //               bgColor,
                  
    //             ],
    //             begin: Alignment.topLeft,
    //             end: Alignment.bottomCenter
    //             )
    //           ),
    //           )),
    //           Positioned(
    //         top: 100.h,
    //         bottom: 20.h,
    //        left: 20.w,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text("Under\nMaintainance",style: GoogleFonts.playfairDisplay(fontSize: 18.sp,fontWeight: FontWeight.w500,color: bColor,height: 0,decoration: TextDecoration.none),softWrap: true,),
                
    //             SizedBox(height: 14,),
    //              Text("WE'LL BE BACK SOON",style: GoogleFonts.poppins(fontSize: 9.sp,fontWeight: FontWeight.w400,color: bColor,decoration: TextDecoration.none),softWrap: true,),
    //              SizedBox(height: 16,),
    //              Text("'Excuse the virtual clutter! We're renovating\nour online space to give you something truly spetacular.\nSee you on the flip side!'",style: GoogleFonts.poppins(fontSize: 9.sp,fontWeight: FontWeight.w400,color: bColor,height: 1.5,decoration: TextDecoration.none),softWrap: true,),
    //           ],
    //         )),
    //         ],
    //       ),
    //     ),
    //   ),
    // );


    // FULL SCREEN
    return Scaffold(
      backgroundColor: bgColor,
     
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 20.h,
              right: 10.w,
              child: Image.asset("assets/images/logo.png",height: 30.h,)),
             Positioned(
              top: 330.h,
              bottom: 0.h,
              right: 0,
              left: 30.w,
              child:  Container(
               
                height: 310.h,
                decoration: BoxDecoration(
                   color: bgColor,
                  image: DecorationImage(image: AssetImage("assets/images/img2.png"))
                ),
              )),

              //  Positioned(
              // top: 0,
              // bottom: 0,
              // right: 0,
              // child: Container(
              //   height: 200.h,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(colors: [
                  
              //       bgColor.withOpacity(0.4),
              //       bgColor,
                    
              //     ],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomCenter
              //     )
              //   ),
              //   )),
               
      
                 Positioned(
              top: 130.h,
              // bottom: 30.h,
              left: 50.w,
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Under",style: GoogleFonts.playfairDisplay(fontSize: 20.sp,fontWeight: FontWeight.w700,color: bColor,height: 1.3,decoration: TextDecoration.none),),
                  SizedBox(height: 5.h,),
                  Text("Maintainance",style: GoogleFonts.playfairDisplay(fontSize: 20.sp,fontWeight: FontWeight.w700,color: bColor,height: 1.3,decoration: TextDecoration.none),),
                  SizedBox(height: 14.h,),
                   Text("WE'LL BE BACK SOON",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500,color: bColor,decoration: TextDecoration.none),softWrap: true,),
                   SizedBox(height: 16.h,),
                   Text("'Undergoing changes but over the\nmoon to make things better for you!\nSit tight, we are revamping to serve you\neven better.'",style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w500,color: bColor,height: 1.5,decoration: TextDecoration.none),softWrap: true,),
                ],
              ))
      
          ],
        ),
      ),
    );
  }
}