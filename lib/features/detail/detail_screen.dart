import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/extensions/textstyle_ext.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/data/car_model.dart';
import 'package:car_app/features/detail/car_detail.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.car});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarDetail(car: car),
          50.verticalSpace,
          Padding(
            padding: 40.symmetricHorizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(car.brand, style: AppTextstyles.regular.setSize(20)),
                Text('${car.price} \$',
                    style: AppTextstyles.semiBold
                        .setSize(20)
                        .copyWith(color: Colors.red))
              ],
            ),
          )
        ],
      ),
    );
  }
}
