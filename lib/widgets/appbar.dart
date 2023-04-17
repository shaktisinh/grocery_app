import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/generated/assets.dart';
import 'package:grocery_app/style/color.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new)),
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarLogo extends StatelessWidget with PreferredSizeWidget {
  final String location;

  AppBarLogo({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 5,
            ),
            Image.asset(
              Assets.imagesLogocolored,
              height: 24,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  Assets.assetsImagesLocation,
                  height: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  location,
                  style: TextStyle(
                      color: grayDarkColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                )
              ],
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
