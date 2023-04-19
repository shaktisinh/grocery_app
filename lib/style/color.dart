
import 'package:flutter/material.dart';

int _primaryColor = 0XFF53B175;
Color primaryColor =  Color(_primaryColor);
Color secondaryColor =  const Color(0XFFF3603F);
Color backgroundColor =  whiteColor;
Color whiteColor = const  Color(0XFFFFFFFF);
Color grayDarkColor = const  Color(0XFF4C4F4D);
Color dividerColor = const  Color(0XFFE2E2E2);
Color googleColor = const  Color(0XFF5383EC);
Color facebookColor = const  Color(0XFF4A66AC);
Color gray= const  Color(0XFFF2F3F2);


 MaterialColor primarySwatch = MaterialColor(
  _primaryColor, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
  <int, Color>{
    50: const Color(0xffa9d8ba),//10%
    100: const Color(0xff87c89e),//20%
    200: const Color(0xff75c191),//30%
    300: const Color(0xff64b983),//40%
    400: Color(_primaryColor),//50%
    500: const Color(0xff4b9f69),//60%
    600: const Color(0xff428e5e),//70%
    700: const Color(0xff3a7c52),//80%
    800: const Color(0xff326a46),//90%
    900: const Color(0xff2a593b),//100%
  },
);