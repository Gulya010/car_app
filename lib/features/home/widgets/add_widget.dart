// ignore_for_file: deprecated_member_use

import 'package:car_app/core/extensions/context_ext.dart';
import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/extensions/list_ext.dart';
import 'package:car_app/core/extensions/textstyle_ext.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.mq.height / 5,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: 15.borderRadius,
          ),
        ),
        Positioned(
          right: 45,
          bottom: 35,
          child: Container(
            padding: [2, 36].symmetricPadding,
            decoration: BoxDecoration(
                color: const Color(0xff988080), borderRadius: 10.borderRadius),
            child: Text(
              'Try now  ->',
              style: AppTextstyles.semiBold.setSize(11).copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
        Positioned(
          top: (context.mq.height / 5) * 0.6,
          right: 45,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
        Positioned(
          top: (context.mq.height / 5) * 0.3,
          right: 0,
          left: 0,
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
        Positioned(
          left: -10,
          bottom: 10,
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
        Padding(
          padding: [22, 16].symmetricPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    '30%',
                    style: AppTextstyles.medium
                        .setSize(48)
                        .copyWith(color: Colors.white),
                  ),
                  Padding(
                    padding: 30.onlyLeft,
                    child: Text(
                      'Off',
                      style: AppTextstyles.medium
                          .setSize(48)
                          .copyWith(color: const Color(0xffFCC21B)),
                    ),
                  ),
                ],
              ),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THIS JULY',
                    style: AppTextstyles.regular
                        .setSize(22)
                        .copyWith(color: Colors.white),
                  ),
                  6.verticalSpace,
                  Text(
                    'Travel to the end of the world \nthis whole month \ncause we care when you are \nhappy',
                    style: AppTextstyles.regular
                        .setSize(10)
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
