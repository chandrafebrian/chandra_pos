// part of 'pages.dart';

// class InventoryPage extends StatefulWidget {
//   const InventoryPage({Key? key}) : super(key: key);

//   @override
//   State<InventoryPage> createState() => _InventoryPageState();
// }

// class _InventoryPageState extends State<InventoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         context.read<PageBloc>().add(GoToMainPage());
//         return false;
//       },
//       child: Scaffold(
//         drawer: const NavBarPage(),
//         appBar: AppBar(
//           backgroundColor: warnaUtamaChandraPos,
//           title: Text(
//             'Inventory',
//             style: GoogleFonts.lato(fontSize: 19),
//           ),
//         ),
//       ),
//     );
//   }
// }
