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
      drawer: const NavBarPage(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthServices().signOut();
          },
          child: const Text('out'),
        ),
      ),
    );
  }
}





// code for sign out!
//  ElevatedButton(
//               onPressed: () {
//                 AuthServices().signOut();
//               },
//               child: const Text('out'),
//             ),