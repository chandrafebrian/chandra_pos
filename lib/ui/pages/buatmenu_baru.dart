part of 'pages.dart';
// halaman buat menu baru

class BuatMenuBaru extends StatelessWidget {
  final ModelMenu modelMenu;
  const BuatMenuBaru(Key? key, this.modelMenu) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController namaMenuController = TextEditingController();
    TextEditingController hargaMenuController = TextEditingController();

    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(GoToMainPage());
        return false;
      },
      child: Scaffold(
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
                //
                // await ServicesMenu().saveMenukefirebase(ModelMenu);
              }
            },
          ),
        ],
        //
      )),
    );
  }

  // Future<void> processingTicketOrder(BuildContext context) async {
  //   await ServicesMenu().saveMenukefirebase(modelMenu);
  // }
}
