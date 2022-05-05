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
                          profilePicture: value,
                        ));
                  });
                }
                return Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: (state.pengguna.profilePicture == ''
                                    ? const AssetImage('assets/user_pic.png')
                                        as ImageProvider
                                    : NetworkImage(
                                        state.pengguna.profilePicture!)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
                return const SpinKitFadingCircle(
                  color: Color(0xFFFFC107),
                  size: 200,
                );
              }
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
