import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Pontos da conta',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: box_card(BoxContent: _AccountPointsContent()),
        )
      ],
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pontos totais:'),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Text(
          'Objetivos:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              ColorDot(color: ThemeColors.accountPoints['freeDeliver']),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text('Entrega gratis: 15000pts'),
              )
            ],
          ),
        ),
        Row(
          children: [
            ColorDot(color: ThemeColors.accountPoints['1MonthStreaming']),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text('1 Mês de streaming: 30000pts'),
            )
          ],
        ),
      ],
    );
  }
}
