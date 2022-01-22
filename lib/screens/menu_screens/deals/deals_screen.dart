import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandra_app/generated/locale_keys.g.dart';
import 'package:sandra_app/screens/home/home_component/home_component.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';


class DealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F5F6F8'),
      appBar:  AppBar(
        titleSpacing: 5,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(LocaleKeys.Deals.tr(),style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.white,
            fontSize: 17.sp,
            fontWeight: FontWeight.w600
        ),),
        leading: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        ),
        backgroundColor: HexColor('#ffcdd2'),
      ),
      // PreferredSize(
      //     preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.7),
      //     child: Container(
      //       color: HexColor('ffcdd2'),
      //       padding:  EdgeInsets.only(top: 5.h,left: 5.w,bottom: 3.h,right: 5.w),
      //       child: Row(
      //         children: [
      //           InkWell(
      //               onTap: ()=>Navigator.pop(context),
      //               child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,)),
      //           SizedBox(width: 2.w,),
      //           Text('Deals',style: TextStyle(
      //               fontFamily: 'OpenSans',
      //               color: Colors.white,
      //               fontSize: 17.sp,
      //               fontWeight: FontWeight.w600
      //           ),),
      //         ],
      //       ),)),

      body: ListView(
        physics: BouncingScrollPhysics(),
        primary: true,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 1.h,),
        children: [
          SizedBox(height: 10,),
          ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context,index)=>Column(
                children: [
                  Container(
                    // width: 345,
                    height: 25.h,
                    child: Image.asset('assets/images/Image 33.png',fit: BoxFit.cover,),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                    decoration: BoxDecoration(
                        color: HexColor('#E5EFEF'),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
                    ),
                    height: 11.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTimeCardItem(timeUnm: '06',timeOption: 'DAYS'),
                        buildTimeCardItem(timeUnm: '23',timeOption: 'HOURS'),
                        buildTimeCardItem(timeUnm: '35',timeOption: 'MINS'),
                        buildTimeCardItem(timeUnm: '10',timeOption: 'SECS'),
                      ],
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context,index)=>SizedBox(height: 1.h,),
              itemCount: 5),
        ],
      ),
    );
  }
}
