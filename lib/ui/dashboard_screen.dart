import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/generated/assets.dart';
import 'package:grocery_app/style/color.dart';
import 'package:grocery_app/widgets/appbar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarLogo(location: "Bengaluru, India"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextField(
                maxLength: 30,
                maxLines: 1,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Search here. . .',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    counterText: "",
                    fillColor: gray,
                    filled: true,
                    prefixIcon: const Icon(Icons.search)),
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Image.asset(Assets.imagesBanner),
                ),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  initialPage: 1,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
