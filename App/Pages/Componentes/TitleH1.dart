import 'package:flutter/material.dart';

class tituloName extends StatelessWidget {
  const tituloName( this.text, {Key? key, this.color}) : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
          fontSize: 28,
          fontWeight:FontWeight.w600,
         color: color,
      ),
    );

  }
}
