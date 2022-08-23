import 'package:flutter/material.dart';

import 'package:application/models/custom_listtile_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
    this.model, {
    Key? key,
  }) : super(key: key);
  final CustomListTileModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: model.backgroundColor,
          borderRadius: BorderRadius.circular(5.r)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned.fill(
            top: -10.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 100.h,
                child: Image.asset(
                  model.pngPath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            height: 50.h,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: AlignmentDirectional.topCenter,
                    end: AlignmentDirectional.bottomCenter,
                    colors: [Colors.transparent, Colors.black87])),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0.h),
            child: Text(
              model.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
