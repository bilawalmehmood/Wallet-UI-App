import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_wallet_app_ui/app/utils/res/colors.dart';
import 'package:my_wallet_app_ui/app/utils/widgets/card.dart';
import 'package:my_wallet_app_ui/app/utils/widgets/headers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Container(
            height: 120,
            child: const WalletHeader(),
          ),
          const Expanded(child: CardSection()),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
