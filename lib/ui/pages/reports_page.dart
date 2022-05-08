part of 'pages.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
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
            'Reports',
            style: GoogleFonts.lato(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
