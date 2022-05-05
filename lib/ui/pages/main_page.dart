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
                builder: ((context, state) {
              if (state is PenggunaLoading) {
                if (imageFileToUpload != null) {
                  uploadImage(imageFileToUpload!).then((value) {
                    imageFileToUpload = null;

                    context.read<PenggunaBloc>().add(UpdateDataPengguna(
                          updatefotobloc: value,
                        ));
                  });
                }
              }
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xFFFFC107), width: 1),
                    ),
                    child: Stack(
                      children: [
                        SpinKitFadingCircle(
                          color: accentColor2,
                          size: 50,
                        ),
                        Container()
                      ],
                    ),
                  )
                ],
              );
            })),
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
