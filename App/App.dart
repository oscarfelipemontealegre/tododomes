import 'package:flutter/material.dart';
import 'package:tododomestika/App/Pages/Componentes/newTaskModal.dart';
import 'package:tododomestika/App/Pages/Splash/SplashPage.dart';
import 'package:tododomestika/App/Pages/Task/TaskList.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primary = Color(0x002097d9);
    const textColor = Color(0xFFFFDB61);
    const backgroundColor = Color(0xFFE0E8DD);

    return MaterialApp(
      title: 'Mis Tareas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,

        textTheme: Theme.of(context).textTheme.apply(

        ),
        primarySwatch: Colors.blue,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            minimumSize: Size(
              double.infinity,
              54,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: const  SplashPage(),
    );
  }
}
