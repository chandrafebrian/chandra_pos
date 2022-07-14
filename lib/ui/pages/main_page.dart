// ignore_for_file: prefer_const_constructors

part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  // ini halaman Point of sale
  // ini halaman Point of sale

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarPage(),
      appBar: AppBar(
        backgroundColor: warnaUtamaChandraPos,
        title: Text('Point of Sale', style: GoogleFonts.lato(fontSize: 19)),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PageBloc>().add(GoToHalamanMenu(BaruModelMenu()));
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: const [
            SizedBox(
              height: 100,
            ),
            Text('data'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}

// Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 AuthServices().signOut();
//               },
//               child: Text('out'),
//             ),
//           ),