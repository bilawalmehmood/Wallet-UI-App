import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/app/utils/res/colors.dart';
import 'package:my_wallet_app_ui/app/utils/res/data.dart';
import 'package:my_wallet_app_ui/app/utils/widgets/pie_chart_custom_painter.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          boxShadow: AppColors.neumorpShadow,
          color: AppColors.primaryColor,
          shape: BoxShape.circle),
      child: Stack(
        children: [
          CustomPaint(
            foregroundPainter:
                PieChartCustomPainter(categories: DataList.expensive),
            child: Container(),
          ),
          Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  boxShadow: AppColors.neumorpShadow,
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle),
              child: const Center(
                  child: Text(
                "200\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
