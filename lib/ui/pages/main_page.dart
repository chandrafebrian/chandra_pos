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
    TextEditingController namaMenuController = TextEditingController();
    TextEditingController hargaMenuController = TextEditingController();

    return Scaffold(
      // drawer: const NavBarPage(),
      appBar: AppBar(
        backgroundColor: warnaUtamaChandraPos,
        title: Text('Point of Sale', style: GoogleFonts.lato(fontSize: 19)),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // context.read<PageBloc>().add(GoToHalamanMenu());
              // isi untuk halaman buat menu baru
            },
          ),
          const SizedBox(width: defaultMargin),
        ],
      ),

      body: Center(
        child: Center(
          child: BlocBuilder<PenggunaBloc, PenggunaState>(
            builder: (context, state) {
              Pengguna pengguna = (state as PenggunaLoading).pengguna;
              return Scaffold(
                  body: Column(
                children: [
                  TextField(
                    controller: namaMenuController,
                    decoration: InputDecoration(
                      hintText: 'Nama Menu',
                      hintStyle: GoogleFonts.lato(fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: hargaMenuController,
                    decoration: InputDecoration(
                      hintText: 'Harga Menu',
                      hintStyle: GoogleFonts.lato(fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.arrow_forward),
                    onPressed: () async {
                      //
                      if (namaMenuController.text.length < 3 ||
                          hargaMenuController.text.length < 3) {
                        Flushbar(
                          backgroundColor: Colors.pink,
                          duration: const Duration(milliseconds: 1000),
                          flushbarPosition: FlushbarPosition.TOP,
                          message: 'nama kurang dari 3 karakter',
                        ).show(context);
                      } else {
                        await ServicesMenu().saveMenukefirebase(BaruModelMenu(
                            pengguna.id,
                            namaMenuController.text,
                            hargaMenuController.text.length));
                      }
                    },
                  ),
                ],
                //
              ));
            },
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
