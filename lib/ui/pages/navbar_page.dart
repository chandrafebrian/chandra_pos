part of 'pages.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: warnaUtamaChandraPos,
      child:
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
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 100,
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: Stack(
                      children: [
                        const SpinKitFadingCircle(
                          color: Colors.white,
                          size: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: (state.pengguna.profilePicture == ''
                                  ? const AssetImage('assets/user_pic.png')
                                      as ImageProvider
                                  : NetworkImage(
                                      state.pengguna.profilePicture!)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.pengguna.namaOutlet!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(state.pengguna.email!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                selectedColor: Colors.blue,
                selectedTileColor: Colors.red,
                leading: const Icon(Icons.shopping_bag_outlined,
                    color: Colors.white),
                title: const Text('POINT OF SALE',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).pop();
                  // untuk pindah halaman
                },
              ),
              ListTile(
                leading: const Icon(Icons.punch_clock, color: Colors.white),
                title: const Text('ACTIVITY',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).pop();
                  // untuk pindah halaman
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('SETTING',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).pop();
                  // untuk pindah halaman
                },
              ),
            ],
          );
        } else {
          return SpinKitFadingCircle(
            color: warnaUtamaChandraPos,
            size: 50,
          );
        }
      }),
    );
  }
}
