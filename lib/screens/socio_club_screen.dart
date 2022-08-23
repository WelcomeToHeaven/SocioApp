import 'package:application/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_listtile_widget.dart';

class SocioClubBody extends StatelessWidget {
  const SocioClubBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: const Text(
              'Explore Clubs',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
            child: GridView.builder(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                itemCount: listTileModels.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 3,
                  mainAxisExtent: 130.h,
                  mainAxisSpacing: 11.h,
                  crossAxisSpacing: 13.w,
                ),
                itemBuilder: (context, index) {
                  return CustomListTile(listTileModels[index]);
                }),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffF43587),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Music',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('Club',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ),
                ),
                Positioned(
                  right: 2.w,
                  bottom: -15.h,
                  child: SizedBox(
                      height: 210.h,
                      child: Image.asset('lib/png/music_notes.png')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
