part of 'pages.dart';
// halaman buat menu baru

class BuatMenuBaru extends StatefulWidget {
  final ModelMenu? modelMenu;
  const BuatMenuBaru({Key? key, this.modelMenu}) : super(key: key);

  @override
  State<BuatMenuBaru> createState() => _BuatMenuBaruState();
}

class _BuatMenuBaruState extends State<BuatMenuBaru> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(GoToHistoryPage());
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
