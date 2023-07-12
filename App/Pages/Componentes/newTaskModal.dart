import 'package:flutter/material.dart';
import 'package:tododomestika/App/Pages/Componentes/TitleH1.dart';

import '../../model/tarea.dart';

class NewTaskModal extends StatelessWidget {
  NewTaskModal({Key? key, required this.onTareaCreated}) : super(key: key);

  final _controller = TextEditingController();
  final void Function(Tarea tarea) onTareaCreated;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 32),
        width: 200,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
            )
          ],
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 10),
            tituloName(
              'Nueva Tarea',
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: "Descripción de la tarea",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  final tarea = Tarea(_controller.text);
                  onTareaCreated(tarea);
                  Navigator.of(context).pop();
                }
              },
              child: Text('Guardar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
