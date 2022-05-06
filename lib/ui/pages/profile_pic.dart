part of 'pages.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
                            height: 60,
                            width: 60,
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
                  size: 50,
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
