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
        backgroundColor: Colors.deepPurple,
        title: const Text('Main Page'),
      ),
      body: const Center(),
      // drawer is code of menu bar on left side
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: ProfilePic(),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined, color: Colors.white),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
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