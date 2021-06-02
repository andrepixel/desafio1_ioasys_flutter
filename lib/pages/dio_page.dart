// import 'package:desafio1_ioasys_flutter/models/todo_model.dart';
// import 'package:desafio1_ioasys_flutter/services/dio_service.dart';
// import 'package:flutter/material.dart';

// class DioPage extends StatefulWidget {
//   @override
//   _DioPageState createState() => _DioPageState();
// }

// class _DioPageState extends State<DioPage> {
//   final DioService dio = DioService();
//   TodoModel? todoModel;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Center(
//           child: Container(
//             width: 100,
//             height: 100,
//             child: ElevatedButton(
//               child: Text('Clicar'),
//               onPressed: () {
//                 setState(() async {
//                   final userData = await dio.getData();
//                   todoModel = userData;
//                 });
//               },
//             ),
//           ),
//         ),
//         todoModel?.title == null
//             ? Text(
//                 'Ops, não tem nada aqui',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               )
//             : Text(
//                 "${todoModel?.ToJson()}",
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//       ],
//     );
//   }
// }
