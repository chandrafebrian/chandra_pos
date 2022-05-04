part of 'pages.dart';

class AccountConfirmationPage extends StatefulWidget {
  final RegistrationData registrationData;
  const AccountConfirmationPage(Key? key, this.registrationData)
      : super(key: key);

  @override
  State<AccountConfirmationPage> createState() =>
      _AccountConfirmationPageState();
}

class _AccountConfirmationPageState extends State<AccountConfirmationPage> {
  bool isSigningUp = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<PageBloc>()
            .add(GoToPreferencePage(widget.registrationData));
        return false;
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 70),
                    height: 56,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              context.read<PageBloc>().add(GoToSplashPage());
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: mainColor,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Konfirmasi Akun',
                            style: GoogleFonts.lato(
                                fontSize: 20,
                                color: mainColor,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: (widget.registrationData.profilefoto == null)
                            ? const AssetImage('assets/user_pic.png')
                            : Image.file(widget.registrationData.profilefoto!)
                                .image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('Selamat Datang',
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: mainColor,
                      )),
                  Text(
                    widget.registrationData.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  (isSigningUp)
                      ? const SpinKitFadingCircle(
                          color: Colors.deepPurple,
                          size: 45,
                        )
                      : SizedBox(
                          width: 250,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text('Konfirmasi',
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                            onPressed: () async {
                              setState(() {
                                isSigningUp = true;
                              });
                              SignSignUpResult result =
                                  await AuthServices().signUp(
                                widget.registrationData.email,
                                widget.registrationData.password,
                                widget.registrationData.name,
                                widget.registrationData.namaOutlet,
                                widget.registrationData.alamat,
                                widget.registrationData.kota,
                                widget.registrationData.noHp,
                                widget.registrationData.selectedGenres,
                              );

                              if (result.pengguna == null) {
                                setState(() {
                                  isSigningUp = false;
                                });
                                Flushbar(
                                  flushbarPosition: FlushbarPosition.TOP,
                                  backgroundColor: const Color(0xFFFF5C83),
                                  duration: const Duration(milliseconds: 1500),
                                  message: result.pesan,
                                ).show(context);
                              }
                            },
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
