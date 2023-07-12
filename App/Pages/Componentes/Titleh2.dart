import 'package:flutter/material.dart';

class TitleH2 extends StatelessWidget {
  const TitleH2( this.text, {Key? key, this.color}) : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
        fontSize: 18,
        fontWeight:FontWeight.w300,
        color: color,
      ),
    );

  }
}
