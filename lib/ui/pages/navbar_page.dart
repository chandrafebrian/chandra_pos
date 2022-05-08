part of 'pages.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

int selectedIndex = 0;
PageController pageController = PageController(initialPage: selectedIndex);

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
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(state.pengguna.email!,
                          style: GoogleFonts.lato(
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
              createDrawerHalamanNavBar(
                  icon: Icons.shop_2,
                  text: 'POINT OF SALE',
                  isSelectedHalamanBar: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                    // untuk pindah halaman nya
                    context.read<PageBloc>().add(GoToMainPage());
                  }),
              createDrawerHalamanNavBar(
                  icon: Icons.punch_clock,
                  text: 'HISTORY',
                  isSelectedHalamanBar: selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                    // untuk pindah halaman nya
                    context.read<PageBloc>().add(GoToHistoryPage());
                  }),
              createDrawerHalamanNavBar(
                  icon: Icons.inventory_2,
                  text: 'INVENTORY',
                  isSelectedHalamanBar: selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                    // untuk pindah halaman nya
                    Navigator.of(context).pop();
                  }),
              createDrawerHalamanNavBar(
                  icon: Icons.settings,
                  text: 'SETTINGS',
                  isSelectedHalamanBar: selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                    // untuk pindah halaman nya
                    Navigator.of(context).pop();
                  }),
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
