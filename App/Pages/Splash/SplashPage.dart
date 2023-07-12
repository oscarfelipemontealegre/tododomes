import 'package:flutter/material.dart';
import 'package:tododomestika/App/Pages/Componentes/TitleH1.dart';
import 'package:tododomestika/App/Pages/Componentes/Titleh2.dart';
import 'package:tododomestika/App/Pages/Task/TaskList.dart';

import '../Componentes/Shape.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
               Shapes(image: 'assets/colegiocampestrecreandosueñospopayan__51_-removebg-preview.png',
               ),
              ],
            ),

            const SizedBox(height: 20,),
             Image.asset('assets/chicoshablando-removebg-preview.png',
             width: 180,
             height: 168,),
            const SizedBox(height: 99),
            tituloName('lista de Tareas',
              color: Colors.blue,),
            const SizedBox(height: 21),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TaskListPage();

                }
                ));
              },
              child: Padding(padding: const EdgeInsets.all(32.0),
              child:
                TitleH2('La mejor forma para que no se te olvide nada es anotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                     color: Colors.blue,

              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
