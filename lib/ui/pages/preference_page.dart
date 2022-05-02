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
  //
  List<String> selectedGenres = [];
  //
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
                      child: const Icon(Icons.arrow_back,
                          color: Colors.deepPurple),
                    ),
                  ),
                  Text(
                    'Pilih Tipe Kategori Usaha Anda',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: mainColor,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 16,
                    runSpacing: 10,
                    children: fungsiGenerateGenreWidget(context),
                  ),
                ],
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
