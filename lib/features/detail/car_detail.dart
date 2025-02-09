import 'package:car_app/core/enum/car_filters.dart';
import 'package:car_app/core/extensions/context_ext.dart';
import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/extensions/list_ext.dart';
import 'package:car_app/core/extensions/textstyle_ext.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({super.key, required this.car});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mq.height / 2,
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: [45, 45].symmetButtom,
            color: car.type.getColor.withOpacity(0.4),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: context.mq.height / 10,
          child: Text(
            'TIIRA',
            textAlign: TextAlign.center,
            style: AppTextstyles.regular
                .setSize(160)
                .copyWith(color: Colors.white.withOpacity(0.5)),
          ),
        ),
        Positioned(
            right: 0, left: 0, bottom: 10, child: Image.network(car.image)),
        SafeArea(
            child: Padding(
          padding: 20.paddingAll,
          child: BackButton(
            style: ElevatedButton.styleFrom(iconColor: Colors.white),
          ),
        ))
      ]),
    );
  }
}
