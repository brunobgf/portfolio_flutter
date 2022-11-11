import 'package:flutter/material.dart';

class FormatedText extends StatelessWidget {
  const FormatedText({
    Key? key,
    required this.textFormat,
  }) : super(key: key);
  final String textFormat;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: const TextStyle(
          fontSize: 18.0,
          overflow: TextOverflow.ellipsis,
        ),
        text: textFormat,
      ),
    );
  }
}
