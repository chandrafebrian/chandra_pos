// ignore_for_file: prefer_const_constructors

part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  // ini halaman Point of sale
  // ini halaman Point of sale

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarPage(),
      appBar: AppBar(
        backgroundColor: warnaUtamaChandraPos,
        title: Text('Point of Sale', style: GoogleFonts.lato(fontSize: 19)),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PageBloc>().add(GoToHalamanMenu(BaruModelMenu()));
            },
            icon: Icon(
              Icons.add,
            ),
          ),
          IconButton(
            onPressed: () {
              AuthServices().signOut();
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: ServicesMenu.menuCollection.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(documentSnapshot['namaBarang'].toString()),
                    subtitle: Text(documentSnapshot['userId'].toString()),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          // Press this button to edit a single product
                          IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () => (documentSnapshot)),
                          // This icon button is used to delete a single product
                          IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () => (documentSnapshot.id)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
