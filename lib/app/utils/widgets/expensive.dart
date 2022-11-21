import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/app/utils/res/colors.dart';
import 'package:my_wallet_app_ui/app/utils/res/data.dart';
import 'package:my_wallet_app_ui/app/utils/widgets/pie_chart.dart';

class Expensives extends StatelessWidget {
  const Expensives({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: const Text(
            "Expensives",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * .3,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: DataList.expensive
                        .map(
                          (e) => Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors
                                    .pieColors[DataList.expensive.indexOf(e)],
                                radius: 7,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(e["name"]),
                            ],
                          ),
                        )
                        .toList()),
              ),
            ),
            const Expanded(child: PieChart())
          ],
        ),
      ],
    );
  }
}
