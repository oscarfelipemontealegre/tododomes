import 'package:flutter/material.dart';

import '../../model/tarea.dart';
import '../Componentes/Shape.dart';
import '../Componentes/TitleH1.dart';
import '../Componentes/newTaskModal.dart';


class TaskListPage extends StatefulWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {

  final tareaList = <Tarea>[
    Tarea('SACAR AL PERRO'),
    Tarea('LAVAR ROPA'),
    Tarea('ORGANIZAR CAMA')
  ];


  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('LISTA DE TAREAS'),
        centerTitle:true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children:  [
          if(!isKeyboard)_Header(),
          Expanded(child:_listaTareas(tareaList,
            onTareaDoneChange: (Tarea tarea) {
            tarea.done = !tarea.done;
            setState(() {

            });
            },
          )),
        ],
      ),
      floatingActionButton:
      FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: ()=> _showNewTaskModal(context),
        child: Icon(Icons.add,
          size: 49,
        ),
      ),
    );
  }

  void _showNewTaskModal(BuildContext context){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder:(_) => Positioned(
          bottom: 25,
          left: 50,
          child: NewTaskModal(
            onTareaCreated: (Tarea tarea) {
              print(tarea.title);
            },
          ),
        ));
  }
}

class _listaTareas extends StatelessWidget {
  const _listaTareas(this.tareaList,{
    super.key,
    required this.onTareaDoneChange,
  });
  final List<Tarea> tareaList;
  final void Function(Tarea tarea) onTareaDoneChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const tituloName('Tareas',
            color: Colors.blue,),

          const SizedBox(height: 13),
          Expanded(child: ListView.separated(
            itemCount: tareaList.length ,
            separatorBuilder: (_,__)=> const SizedBox(height: 16),
            itemBuilder: (_,index)=>
                _TareaItem(tareaList[index],
                onTap: () => onTareaDoneChange( tareaList[index]),
                ),
          ),
          ),
        ]
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          Row(children:const [Shapes(image: 'assets/colegiocampestrecreandosueñospopayan__51_-removebg-preview.png')]),
           Column(
             children: [
               Image.asset('assets/tasks-list-image.png',
               width: 120,
               height: 120,
               ),
               const SizedBox(height: 16),
               tituloName('Completa tus tareas', color:Colors.white),
               const SizedBox(height: 16),
             ],
           )
        ],

      ),
    );
  }
}

class _TareaItem extends StatelessWidget {
  const _TareaItem(this.tarea,{Key? key, this.onTap}) : super(key: key);

  final Tarea tarea;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 18),
          child: Row(
            children: [
              Icon(
              tarea.done ? Icons.check_box_rounded: Icons.check_box_outline_blank_rounded,color: Colors.blue,
              ),
              const SizedBox(width:10),
              Text(tarea.title),
            ],
          ),
      ),
      ),
    );
  }
}


