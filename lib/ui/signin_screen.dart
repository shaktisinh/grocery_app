import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/generated/assets.dart';
import 'package:grocery_app/style/color.dart';
import 'package:grocery_app/style/strings.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Assets.imagesSigninimage),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get your groceries\nwith $appName",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesIndia, height: 30,),
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        maxLength: 14,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            bottom: 16,  // HERE THE IMPORTANT PART
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Enter phone number',
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    )
                  ],
                ),
                Divider(height: 3,color: dividerColor,),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      child: Text(
                        "Verify Number",
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    "Or login with social media",
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(googleColor),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.imagesGoogleIcon, height: 20,),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Continue with Google     ",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(facebookColor),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.imagesFacebookIcon, height: 20,),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Continue with Facebook",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
