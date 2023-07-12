import 'package:flutter/material.dart';

class ContenedorBlanco extends StatefulWidget {
  const ContenedorBlanco({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  State<ContenedorBlanco> createState() => _ContenedorBlancoState();
}

class _ContenedorBlancoState extends State<ContenedorBlanco> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(children:widget.children,)
    );
  }
}