part of 'pages.dart';

class BuatMenuBaru extends StatefulWidget {
  // final ModelMenu modelMenu;
  const BuatMenuBaru({Key? key}) : super(key: key);

  @override
  State<BuatMenuBaru> createState() => _BuatMenuBaruState();
}

class _BuatMenuBaruState extends State<BuatMenuBaru> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(GoToMainPage());
        return false;
      },
      child: const Scaffold(
        body: Center(
          child: Text('Buat Menu Baru'),
        ),
      ),
    );
  }
}
