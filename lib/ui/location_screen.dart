import 'package:flutter/material.dart';
import 'package:grocery_app/generated/assets.dart';
import 'package:grocery_app/style/color.dart';
import 'package:grocery_app/ui/dashboard_screen.dart';
import 'package:grocery_app/widgets/appbar.dart';
import 'package:grocery_app/widgets/background.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(color: primaryColor),
          const AppBarWidget(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Image.asset(Assets.imagesLocation)),
                  const SizedBox(
                    height: 24,
                  ),
                  const Center(
                    child: Text(
                      "Select Your Location",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      "Turn on your location to stay in tune with\nwhat’s happening in your area",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //city
                  const SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 3,
                    color: dividerColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextField(
                    maxLength: 50,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        bottom: 16, // HERE THE IMPORTANT PART
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "Select your city",
                      border: InputBorder.none,
                      counterText: "",
                    ),
                  ),
                  Divider(
                    height: 3,
                    color: dividerColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextField(
                    maxLength: 50,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        bottom: 16, // HERE THE IMPORTANT PART
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "Select your area",
                      border: InputBorder.none,
                      counterText: "",
                    ),
                  ),
                  Divider(
                    height: 3,
                    color: dividerColor,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  DashboardScreen()));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ))),
                        child: Text(
                          "Continue",
                          style: Theme.of(context).textTheme.labelLarge,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
