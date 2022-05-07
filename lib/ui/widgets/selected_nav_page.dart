part of 'widgets.dart';

Widget createDrawerHalamanNavBar({
  IconData? icon,
  String? text,
  GestureTapCallback? onTap,
  bool? isSelected,
  Color? color,
}) {
  return Ink(
    color: isSelected! ? const Color(0xffE3EAFF) : Colors.transparent,
    child: ListTile(
      selected: true,
      hoverColor: Colors.red,
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white),
          const SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text!,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}



// class NavDraw extends StatefulWidget {
//   const NavDraw({Key? key}) : super(key: key);

//   @override
//   _NavDrawState createState() => _NavDrawState();
// }

// int selectedIndex = 0;

// class _NavDrawState extends State<NavDraw> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           Container(
//             height: 100.0,
//             color: const Color(0xff2B4DB9),
//             child: const DrawerHeader(
//               margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//               padding: EdgeInsets.zero,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.none,
//                       image:
//                           NetworkImage('https://picsum.photos/250?image=9'))),
//               child: null,
//             ),
//           ),
          
         
//           const Divider(),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       initialRoute: '/page0',
//       routes: {
//         '/page0': (context) => const Page0(),
//         '/page1': (context) => const Page1(),
//         '/page2': (context) => const Page2(),
//         '/page3': (context) => const Page3(),
//       },
//     );
//   }
// }

// class Page0 extends StatelessWidget {
//   const Page0({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: const NavDraw(),
//         appBar: AppBar(
//           title: const Text("page 0"),
//         ),
//         body: const Text("page 0"));
//   }
// }

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: const NavDraw(),
//         appBar: AppBar(
//           title: const Text("page 1"),
//         ),
//         body: const Text("page 1"));
//   }
// }

// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: const NavDraw(),
//         appBar: AppBar(
//           title: const Text("page 2"),
//         ),
//         body: const Text("page 2"));
//   }
// }

// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: const NavDraw(),
//         appBar: AppBar(
//           title: const Text("page 3"),
//         ),
//         body: const Text("page 3"));
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       drawer: const NavDraw(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
