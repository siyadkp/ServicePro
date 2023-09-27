import 'package:flutter/material.dart';
import 'package:service_pro/res/color/color.dart';
import 'package:sizer/sizer.dart';

class Buttons {
  // Inline Button
  static inlineButton(Function onPressedFunction, String buttonText) =>
      Center(
        child: SizedBox(
          width: 80.w,
          height: 13.w,
          child: ElevatedButton(
              onPressed: () {
                onPressedFunction();
              },
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(KColors.darkBlue),),
              child: Text(buttonText,style: TextStyle(color: Colors.white,fontSize: 4.w),),
              ),
        ),
      );

  // Outline Button
 static outlinedButton(Function onPressedFunction, String buttonText) =>
    Center(
  child: SizedBox(
    width: 40.w,
    height: 12.w,
    child: OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2.0, color: KColors.darkBlue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.0), // Set the radius you want here
        ),
      ),
      child: Text(buttonText),
    ),
  ),
);





  // Back Arrow Button
  
static backArrowButton(Function onPressedFunction,) =>
IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back));

//     Padding(
//   padding: const EdgeInsets.only(left: 20),
//   child: SizedBox(
//     width: 12.w,
//     height: 10.w,
//     child: ElevatedButton(
//       onPressed:() =>  onPressedFunction,
//       style: ButtonStyle(
//         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5.0),
//           ),
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.arrow_back_ios,
//           color: Colors.black,
//         ),
//       ),
//     ),
//   ),
// );


}
