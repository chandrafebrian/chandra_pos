// ignore_for_file: prefer_const_constructors

part of 'pages.dart';

class MainPage extends StatefulWidget {
  final BaruModelMenu? baruModelMenu;
  const MainPage({Key? key, this.baruModelMenu}) : super(key: key);
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
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context
                  .read<PageBloc>()
                  .add(GoToHalamanMenu(widget.baruModelMenu as BaruModelMenu));
              // isi untuk halaman buat menu baru
            },
          ),
          const SizedBox(width: defaultMargin),
        ],
      ),
      body: SizedBox(
        height: 30,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              AuthServices().signOut();
            },
            child: const Text('out'),
          ),
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
