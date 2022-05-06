part of 'pages.dart';

class PreferencePage extends StatefulWidget {
  final List<String> kategoriGenres = [
    'FnB',
    'Retail',
    'Service',
    'Others',
  ];
  final RegistrationData registrationData;
  PreferencePage(Key? key, this.registrationData) : super(key: key);

  @override
  State<PreferencePage> createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  TextEditingController alamatController = TextEditingController();
  TextEditingController kotaController = TextEditingController();

  List<String> selectedGenres = [];
  //

  @override
  void initState() {
    super.initState();

    alamatController.text = widget.registrationData.alamat;
    kotaController.text = widget.registrationData.kota;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.registrationData.password = '';

        context
            .read<PageBloc>()
            .add(GoToRegistrationPage(widget.registrationData));
        return false;
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 56,
                    margin: const EdgeInsets.only(top: 20, bottom: 4),
                    child: GestureDetector(
                      onTap: () {
                        widget.registrationData.password = '';
                        context
                            .read<PageBloc>()
                            .add(GoToRegistrationPage(widget.registrationData));
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 8, 138, 67),
                      ),
                    ),
                  ),
                  Text(
                    'Pilih Tipe Kategori Usaha',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: warnaUtamaChandraPos,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    children: fungsiGenerateGenreWidget(context),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Input Lokasi Outlet',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: warnaUtamaChandraPos,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: alamatController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Alamat',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: kotaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Kota',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: alamatController.text.isEmpty ||
                          alamatController.text.isEmpty ||
                          selectedGenres.isEmpty
                      ? const Color(0XFFE4E4E4)
                      : warnaUtamaChandraPos,
                  child: Icon(
                    Icons.arrow_forward,
                    color: alamatController.text.isEmpty ||
                            kotaController.text.isEmpty ||
                            selectedGenres.isEmpty
                        ? Colors.white
                        : Colors.white,
                  ),
                  onPressed: () {
                    if (selectedGenres.isEmpty) {
                      Flushbar(
                        duration: const Duration(milliseconds: 1500),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: const Color(0xFFFF5C83),
                        message: 'Pilih 1 kategori',
                      ).show(context);
                    } else if (alamatController.text.length < 5) {
                      Flushbar(
                        duration: const Duration(milliseconds: 1500),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: const Color(0xFFFF5C83),
                        message: 'Alamat Tidak Valid',
                      ).show(context);
                    } else if (kotaController.text.length < 4) {
                      Flushbar(
                        duration: const Duration(milliseconds: 1500),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: const Color(0xFFFF5C83),
                        message: 'Nama Kota Tidak Valid',
                      ).show(context);
                    } else {
                      widget.registrationData.selectedGenres = selectedGenres;
                      widget.registrationData.alamat = alamatController.text;
                      widget.registrationData.kota = kotaController.text;

                      context.read<PageBloc>().add(
                          GoToAccountConfirmationPage(widget.registrationData));
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> fungsiGenerateGenreWidget(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * defaultMargin - 24) / 2;
    return widget.kategoriGenres
        .map((e) => SelectableBox(
              e,
              widht: width,
              isSelected: selectedGenres.contains(e),
              onTap: () {
                fungsiOnseletedGenre(e);
              },
            ))
        .toList();
  }

  void fungsiOnseletedGenre(String genre) {
    if (selectedGenres.isEmpty) {
      setState(() {
        selectedGenres.add(genre);
      });
    } else if (selectedGenres.contains(genre)) {
      {
        setState(() {
          selectedGenres.remove(genre);
        });
      }
    } else {
      setState(() {
        selectedGenres.removeLast().isEmpty
            ? selectedGenres.removeLast()
            : selectedGenres.add(genre);
      });
    }
  }
}





// 
// 
// 
//** */ code untuk memilih box single choice
//  void fungsiOnseletedGenre(String genre) {
//     if (selectedGenres.isEmpty) {
//       setState(() {
//         selectedGenres.add(genre);
//       });
//     } else if (selectedGenres.contains(genre)) {
//       {
//         setState(() {
//           selectedGenres.remove(genre);
//         });
//       }
//     } else {
//       setState(() {
//         selectedGenres.removeLast().isEmpty
//             ? selectedGenres.removeLast()
//             : selectedGenres.add(genre);
//       });
//     }
//   }



// 
// 
// ** */ code untuk memilih box multiple
// void fungsiOnseletedGenre(String genre) {
//     if (selectedGenres.isEmpty) {
//       setState(() {
//         selectedGenres.add(genre);
//       });
//     } else if (selectedGenres.contains(genre)) {
//       {
//         setState(() {
//           selectedGenres.remove(genre);
//         });
//       }
//     } else {
//       setState(() {
//         selectedGenres.add(genre);
//       });
//     }
//   }