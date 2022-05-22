part of 'pages.dart';
// halaman buat menu baru

class BuatMenuBaru extends StatefulWidget {
  const BuatMenuBaru({Key? key}) : super(key: key);

  @override
  State<BuatMenuBaru> createState() => _BuatMenuBaruState();
}

class _BuatMenuBaruState extends State<BuatMenuBaru> {
  TextEditingController namaMenuController = TextEditingController();
  TextEditingController hargaMenuController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();

  //   namaMenuController.text = widget.modelMenu?.namaCreateMenu!;
  //   hargaMenuController.text = widget.modelMenu?.hargaCreateMenu.toString();
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(GoToHistoryPage());
        return false;
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
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
                    await ServicesMenu().menuCollection.add({
                      'userID': context.read<PenggunaBloc>(),
                      'namaCreateMenu': namaMenuController.text,
                      'hargaCreateMenu': int.parse(hargaMenuController.text),
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
