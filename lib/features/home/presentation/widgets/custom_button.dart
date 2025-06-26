// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;
//   final bool isDestructive;

//   const CustomButton({
//     super.key,
//     required this.text,
//     required this.onPressed,
//     this.isDestructive = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: isDestructive
//             ? Theme.of(context).colorScheme.error
//             : Theme.of(context).medicalBlue,
//         foregroundColor: isDestructive
//             ? Theme.of(context).colorScheme.onError
//             : Theme.of(context).colorScheme.onPrimary,
//         padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.r), // From --radius: 0.5rem
//         ),
//         textStyle: Theme.of(
//           context,
//         ).textTheme.labelLarge?.copyWith(fontSize: 16.sp),
//       ),
//       child: Text(text),
//     );
//   }
// }

// ```dart
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil.dart/flutter_screenutil.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final Color color;
//   final VoidCallback onPressed;
//   final bool isDestructive;

//   const CustomButton({
//     Key? key,
//     required this.text,
//     required this.onPressed,
//     this.isDestructive = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: isDestructive
//             ? Theme.of(context).colorScheme.error
//             : Theme.of(context).extension<CustomColors>()!.medicalBlue,
//         foregroundColor: isDestructive
//             ? Theme.of(context).colorScheme.onError
//             : Theme.of(context).colorScheme.onPrimary,
//         padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.r), // From --radius: 0.5rem
//         ),
//         textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
//               fontSize: 16.sp,
//             ),
//       ),
//       child: Text(text),
//     );
//   }
// }
// ```
