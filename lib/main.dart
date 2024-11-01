import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// --- tarea 1 ---
// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   DateTime now = DateTime.now();

//   void timer() {
//     Future.delayed(Duration(seconds: 1))
//       .then((_) {
//         setState(() {
//           now = DateTime.now();
//         });

//         timer();
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(child: Text('$now', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => timer(),
//           child: Text('Start'),
//         ),
//       ),
//     );
//   }
// }

// --- tarea 2 ---
// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   final TextEditingController titulo = TextEditingController();
//   final TextEditingController cuerpo = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.only(top: 60, left: 25, right: 25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Blod de mi sitio web!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
//               const Text('Ingresa los datos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: titulo,
//                 decoration: const InputDecoration(
//                   hintText: 'Titulo...'
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: cuerpo,
//                 decoration: const InputDecoration(
//                   hintText: 'Cuerpo...'
//                 ),
//               ),
//               const SizedBox(height: 10),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute('titulo', 'que tal')));
//                 },
//                 icon: Icon(Icons.next_plan),
//                 label: Text('Enviar formulario'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   var title = 'Title not found';
//   var body = 'Body not found';

//   SecondRoute(this.title, this.body, {super.key});
//     // : this.title = title,
//     //   this.body = body;

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Padding(
//         padding: EdgeInsets.only(top: 60, left: 25, right: 25),
//         child: Scaffold(
//           body: Column(
//             children: [
//               Text(title),
//               Text(body),
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

// --- tarea 3 ---
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   final isActive = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(colorSchemeSeed: Colors.amber),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           body: Padding(
//         padding: EdgeInsets.only(top: 60, right: 25, left: 25),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Publicaciones (publicadas)',
//               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Table(
//               children: <TableRow>[
//                 TableRow(
//                   children: <Widget>[
//                     Container(
//                       alignment: Alignment.center,
//                       height: 32,
//                       color: Colors.amberAccent,
//                       child: Text('El Leon y el Lobo'),
//                     ),
//                   ],
//                 ),
//                 TableRow(
//                   children: <Widget>[
//                     Container(
//                       alignment: Alignment.center,
//                       height: 32,
//                       child: Row(
//                         children: [
//                           Text('El Leon se comio al lobo porque...'),
//                           SizedBox(width: 10),
//                           ElevatedButton.icon(
//                             onPressed: () {}, 
//                             label: Text('Ver más'),
//                             iconAlignment: IconAlignment.end,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),

//           ],
//         ),
//       )),
//     );
//   }
// }