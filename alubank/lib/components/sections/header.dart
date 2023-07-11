import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradientColors,
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text('\$ 1000.00',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                Text.rich(
                  TextSpan(
                    text: '\$',
                    children: [
                      TextSpan(
                          text: '1000.00',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ),
                Text(
                  'Balanço disponivel',
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 43,
            ),
          ],
        ),
      ),
    );
  }
}
