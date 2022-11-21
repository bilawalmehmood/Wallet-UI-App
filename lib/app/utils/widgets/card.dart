import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/app/utils/res/colors.dart';
import 'package:my_wallet_app_ui/app/utils/widgets/card_detail.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Slected Wallet",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  boxShadow: AppColors.neumorpShadow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 80,
                      bottom: -150,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: AppColors.neumorpShadow,
                          color: Colors.white38,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -250,
                      top: -100,
                      bottom: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: AppColors.neumorpShadow,
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const CardDetail()
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
