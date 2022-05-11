part of 'pages.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            'Settings',
            style: GoogleFonts.lato(fontSize: 19),
          ),
        ),
        body: Center(
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
