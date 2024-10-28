// import 'package:app/core/utils/routes.dart';
// import 'package:app/presentation/stores/home_page_store.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final HomePageStore _homePageStore = HomePageStore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text("Home"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             ValueListenableBuilder(
//               valueListenable: _homePageStore.stateNotifier,
//               builder: (__, state, _) {
//                 return Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text("Informe seu nome: "),
//                           TextFormField(controller: state.nameController),
//                         ],
//                       ),
//                     ),
//                     Text(
//                       'Counter: ${state.counter}',
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           onPressed: _homePageStore.decrement,
//                           child: const Text("-"),
//                         ),
//                         const SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: _homePageStore.increment,
//                           child: const Text("+"),
//                         )
//                       ],
//                     ),
//                     const SizedBox(height: 40),
//                     ElevatedButton(
//                       onPressed: () =>
//                           Navigator.pushNamed(context, AppRoutes.detail),
//                       child: const Text("Ver detalhes"),
//                     )
//                   ],
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
