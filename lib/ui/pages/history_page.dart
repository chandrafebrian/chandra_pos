part of 'pages.dart';
// untuk halaman menampilkan menu dari database

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(GoToMainPage());
        return false;
      },
      child: Scaffold(
        drawer: const NavBarPage(),
        appBar: AppBar(
          backgroundColor: warnaUtamaChandraPos,
          title: Text(
            'History',
            style: GoogleFonts.lato(fontSize: 19),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.read<PageBloc>().add(GoToBuatMenuBaru(ModelMenu()));
              },
            ),
            const SizedBox(width: defaultMargin),
          ],
        ),
      ),
    );
  }
}
