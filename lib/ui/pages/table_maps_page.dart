// part of 'pages.dart';

// // 3.  memanggil kerangka widget meja

// class TableMapsPage extends StatefulWidget {
//   const TableMapsPage({Key? key}) : super(key: key);

//   @override
//   State<TableMapsPage> createState() => _TableMapsPageState();
// }

// class _TableMapsPageState extends State<TableMapsPage> {
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
//             'Table Maps',
//             style: GoogleFonts.lato(fontSize: 19),
//           ),
//         ),
//         body: ListView(
//           children: contohModelNilaiMejaList
//               .map((mejaidentifiermap) => Padding(
//                     padding: const EdgeInsets.fromLTRB(
//                         defaultMargin, 10, defaultMargin, 16),
//                     child: WidgetMejaCard(modelNilaiMeja: mejaidentifiermap),
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }
