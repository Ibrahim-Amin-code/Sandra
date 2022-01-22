// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:sandra_app/generated/locale_keys.g.dart';
// import 'package:sandra_app/screens/Review/write%20review/write_review.dart';
// import 'package:sandra_app/screens/components/constants.dart';
// import 'package:sandra_app/screens/components/default_button.dart';
// import 'constant.dart';
// import 'package:sizer/sizer.dart';
// import 'package:easy_localization/easy_localization.dart';
//
//
// // ignore: use_key_in_widget_constructors
// class ReviewBody extends StatefulWidget {
//   @override
//   _ReviewBodyState createState() => _ReviewBodyState();
// }
//
// class _ReviewBodyState extends State<ReviewBody> {
//   String value = '';
//   List<String> items = ["All", "Most relevent", "Show less"];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       primary: true,
//       shrinkWrap: true,
//       padding:  EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
//               child: Text(
//                 "${LocaleKeys.Filter_by.tr()} : ",
//                 style: headingStyle.copyWith(
//                     fontSize: 13.sp,
//                     fontWeight: FontWeight.w600,
//                     color: HexColor("#2D2D2D")),
//               ),
//             ),
//             const Spacer(),
//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 15,
//               ),
//               height: 5.h,
//               width: 50.w,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(color: HexColor("#7070704D"))),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: Text(
//                       value,
//                       style: headingStyle.copyWith(
//                           fontSize: 11.sp,
//                           fontWeight: FontWeight.w500,
//                           color: HexColor("#C9C9C9")),
//                     ),
//                   ),
//                   PopupMenuButton(
//                     padding: EdgeInsets.only(left: 5.w),
//                       icon: Icon(
//                         Icons.arrow_drop_down,
//                         color: HexColor("#C9C9C9"),
//                       ),
//                       onSelected: (val) {
//                         setState(() {
//                           value = val.toString();
//                         });
//                       },
//                       itemBuilder: (context) {
//                         return items.map((choice) {
//                           return PopupMenuItem(
//                             value: choice,
//                             child: Text(choice),
//                           );
//                         }).toList();
//                       }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 3.h,),
//         ListView.separated(
//             primary: false,
//             shrinkWrap: true,
//             itemBuilder: (context, index) => reviewContent(),
//             separatorBuilder: (context, index) => spaceH(10),
//             itemCount: 5),
//         spaceH(30),
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           child: DefaultButton(
//               text: LocaleKeys.Write_Review.tr(),
//               press: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => WriteReviewScreen()))),
//         )
//       ],
//     );
//   }
// }
