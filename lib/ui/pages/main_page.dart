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
      // drawer: const NavBarPage(),
      appBar: AppBar(
        backgroundColor: warnaUtamaChandraPos,
        title: Text('Point of Sale', style: GoogleFonts.lato(fontSize: 19)),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.add),
        //     onPressed: () {
        //       context.read<PageBloc>().add(GoToBuatMenuBaru());
        //     },
        //   ),
        //   const SizedBox(width: defaultMargin),
        // ],
      ),
      body: const SizedBox(
        height: 30,
        child: Center(
          child: Text(''),
        ),
      ),
    );
  }
}





// code for sign out!
//  ElevatedButton(
//               onPressed: () {
//                 AuthServices().signOut();
//               },
//               child: const Text('out'),
//             ),