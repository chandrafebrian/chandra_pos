part of 'pages.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(child:
        BlocBuilder<PenggunaBloc, PenggunaState>(builder: (context, state) {
      if (state is PenggunaLoading) {
        if (imageFileToUpload != null) {
          uploadImage(imageFileToUpload!).then((value) {
            imageFileToUpload = null;

            context.read<PenggunaBloc>().add(UpdateDataPengguna(
                  profilePicture: value,
                ));
          });
        }
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image(
                width: 100,
                height: 100,
                image: (state.pengguna.profilePicture == ''
                    ? const AssetImage(
                        'assets/user_pic.png',
                      ) as ImageProvider
                    : NetworkImage(state.pengguna.profilePicture!)),
                fit: BoxFit.cover,
              ),
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              accountName: Text(
                state.pengguna.namaOutlet!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              accountEmail: Text(
                state.pengguna.email!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(),
          ],
        );
      } else {
        return const SpinKitFadingCircle(
          color: Colors.deepPurple,
          size: 50,
        );
      }
    }));
  }
}
// 




