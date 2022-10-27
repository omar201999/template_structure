import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_structure/presentation/styles/colors.dart';

ThemeMode appMode = ThemeMode.light;


ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColor.cyanBlue,

    appBarTheme: AppBarTheme(
      titleSpacing: 15,
      elevation: 0,
      actionsIconTheme: IconThemeData(
        color: AppColor.cyanBlue,
      ),
      backgroundColor: AppColor.cyanBlue,
      iconTheme: IconThemeData(
        color: AppColor.cyanBlue,
      ),
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        color: AppColor.cyanBlue,
        fontWeight: FontWeight.bold,
        fontFamily: 'SemiBold',
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      //backgroundColor: defaultColor,
      selectedItemColor: AppColor.cyanBlue,
      unselectedItemColor: Colors.black54,
      elevation: 20,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Regular',
        fontSize: 17.sp,
      ),
     /* unselectedLabelStyle: TextStyle(
        fontFamily: 'Regular',
        fontSize: 17.sp,
      ),
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        size: 30,
      ),*/
    ),
    iconTheme: IconThemeData(
      color: AppColor.cyanBlue,
    ),
    //fontFamily: 'SemiBold',
    //cardColor: AppColor.white,
    cardTheme: CardTheme(
      color: AppColor.white,
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r),),
      ),
    )
);


ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    /* bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColor.black
  ),*/
    scaffoldBackgroundColor: AppColor.black,
    appBarTheme: AppBarTheme(
      titleSpacing: 12,
      //backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff242526),
          //HexColor('#18191a'),//#1c1c1c 0xff18191a
          statusBarBrightness: Brightness.light),
      backgroundColor: AppColor.black,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        fontSize: 24,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'SemiBold',
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.black,
      selectedItemColor: AppColor.blue,
      unselectedItemColor: AppColor.white,
      elevation: 0,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Regular',
        fontSize: 17.sp,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Regular',
        fontSize: 17.sp,
      ),
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        size: 30,
      ),
    ),
    textTheme: TextTheme(
      caption: TextStyle(
        color: Color(0xFFD4D4D4),
      ),
    ),
    fontFamily: 'SemiBold',
    iconTheme: IconThemeData(color: AppColor.white),
    cardTheme: CardTheme(
      color: AppColor.darkGrey,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.r),),
      ),
    )

);
