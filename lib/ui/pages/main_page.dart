part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<PenggunaBloc, PenggunaState>(
              builder: (context, state) => (state is PenggunaLoading)
                  ? Text(state.pengguna.email)
                  : const Text('No User'),
            ),
            ElevatedButton(
              onPressed: () {
                AuthServices().signOut();
              },
              child: const Text('out'),
            ),
          ],
        ),
      ),
    );
  }
}
