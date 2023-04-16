import 'package:flutter/material.dart';
import 'package:grocery_app/generated/assets.dart';
import 'package:grocery_app/style/color.dart';
import 'package:grocery_app/widgets/background.dart';

class VerifyNumberScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         GradientBackground(color: primaryColor),
         Padding(  padding: const EdgeInsets.all(30.0),
           child: Column(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "Enter 6-digit verification code and login",
                 style: Theme.of(context).textTheme.headlineSmall,
                 textAlign: TextAlign.start,
               ),
               const SizedBox(
                 height: 16,
               ),
               const TextField(
                 maxLength: 6,
                 maxLines: 1,
                 textAlign: TextAlign.start,
                 keyboardType: TextInputType.number,
                 style: TextStyle(color: Colors.black),
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.only(
                     bottom: 16, // HERE THE IMPORTANT PART
                   ),
                   floatingLabelBehavior: FloatingLabelBehavior.never,
                   labelText: '- - - - - -',
                   border: InputBorder.none,
                   counterText: "",
                 ),
               ),
               Divider(height: 3,color: dividerColor,),
               const SizedBox(
                 height: 16,
               ),
               SizedBox(
                 width: double.infinity,
                 height: 50,
                 child: ElevatedButton(
                     onPressed: () {
                       // Navigator.push(context,
                       //     MaterialPageRoute(builder: (context) => VerifyNumberScreen()));
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
                       "Login",
                       style: Theme.of(context).textTheme.labelLarge,
                     )),
               ),
               const SizedBox(
                 height: 16,
               ),
               Center(
                 child: Text(
                   "Resend verification code",
                   style: Theme.of(context).textTheme.bodySmall,
                   textAlign: TextAlign.center,
                 ),
               ),
             ],
           ),
         )
       ],
     ),
   );
  }

}