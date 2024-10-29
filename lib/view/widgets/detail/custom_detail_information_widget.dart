import 'package:flutter/material.dart';

class CustomDetailInformationWidget extends StatelessWidget {
  const CustomDetailInformationWidget({
    super.key,
    required this.title,
    required this.value,
    this.titleTextStyle,
    this.valueTextStyle,
  });

  final String title;
  final String value;
  final TextStyle? titleTextStyle;
  final TextStyle? valueTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                title,
                style: titleTextStyle,
              ),
            ),
            Container(
              height: 30,
              width: 2,
              color: Colors.grey.shade800,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                value,
                style: valueTextStyle,
              ),
            )
          ],
        ),
        Divider(thickness: 2)
      ],
    );
  }
}
