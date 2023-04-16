import 'package:flutter/material.dart';

import 'color.dart';

ThemeData light = ThemeData(
  primarySwatch: primarySwatch,
  textTheme: const TextTheme(
      headlineLarge :TextStyle(color: Colors.white,fontWeight: FontWeight.w700,),
      headlineMedium :TextStyle(color: Colors.black,fontWeight: FontWeight.w500,),
      headlineSmall :TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
      titleMedium :TextStyle(color: Colors.white,fontWeight: FontWeight.w500,),
      labelLarge :TextStyle(color: Colors.white,fontWeight: FontWeight.w700,),
      labelMedium :TextStyle(color: Colors.white,fontWeight: FontWeight.w500,),
      labelSmall :TextStyle(color: Colors.white,fontWeight: FontWeight.w400,),
    bodyMedium :TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,)
  )
);
