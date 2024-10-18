import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/size_config.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
  });

  final String title;
  final String subtitle;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            blurRadius: 2,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle ?? GoogleFonts.reggaeOne(),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(
            subtitle,
            style: subtitleStyle ?? GoogleFonts.inter(),
          )
        ],
      ),
    );
  }
}
