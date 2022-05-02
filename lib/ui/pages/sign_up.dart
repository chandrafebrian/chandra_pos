part of 'pages.dart';
// * (Parameter) adalah sebutan untuk nilai inputan fungsi pada saat fungsi itu di definisikan / di jelaskan / di deklarasikan. ,
// * (argument) adalah sebutan untuk nilai inputan fungsi pada saat fungsi itu dipanggil.

class SignUpPage extends StatefulWidget {
  final RegistrationData registrationData;
  const SignUpPage(Key? key, this.registrationData) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController namaOutletController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController noHpController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool obscureTextPassword = true;
  bool obscureTextConfirmPassword = true;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isEmailTaken = false;
  bool isNoHpValid = false;
  bool isNameValid = false;

  @override
  void initState() {
    super.initState();

    namaOutletController.text = widget.registrationData.namaOutlet;
    nameController.text = widget.registrationData.name;
    noHpController.text = widget.registrationData.noHp;
    emailController.text = widget.registrationData.email;
  }

  @override
  Widget build(BuildContext context) {
    context
        .read<ThemeBloc>()
        .add(ChangeTheme(ThemeData(primarySwatch: Colors.deepPurple)));
    return WillPopScope(
      onWillPop: () async {
        context.read<PageBloc>().add(GoToSplashPage());
        return Future.value(false);
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
                    margin: const EdgeInsets.only(top: 20, bottom: 22),
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
                            'Create New\nAccount',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: mainColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 104,
                    width: 90,
                    child: Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: (widget.registrationData.profilefoto ==
                                      null)
                                  ? const AssetImage('assets/user_pic.png')
                                  : Image.file(
                                          widget.registrationData.profilefoto!)
                                      .image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () async {
                              if (widget.registrationData.profilefoto == null) {
                                widget.registrationData.profilefoto =
                                    await ambilGambar();
                              } else {
                                widget.registrationData.profilefoto = null;
                              }
                              setState(() {});
                            },
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      (widget.registrationData.profilefoto ==
                                              null)
                                          ? 'assets/btn_add_photo.png'
                                          : 'assets/btn_del_photo.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 36),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isNameValid = value.length >= 3;
                      });
                    },
                    controller: namaOutletController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Nama Outlet',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isNameValid = value.length >= 3;
                      });
                    },
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Nama Pengguna',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isNoHpValid = value.length >= 10 &&
                            value.length <= 13 &&
                            value.contains('0');
                      });
                    },
                    keyboardType: TextInputType.number,
                    controller: noHpController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Hp',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isEmailTaken = value.isNotEmpty &&
                            value.contains('@') &&
                            value.contains('.') &&
                            EmailValidator.validate(value);
                      });
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isPasswordValid = value.length >= 6 &&
                            value.contains(
                                RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])'));
                      });
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureTextPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: mainColor,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureTextPassword = !obscureTextPassword;
                          });
                        },
                      ),
                    ),
                    obscureText: obscureTextPassword,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isPasswordValid = value.length >= 6 &&
                            value.contains(
                                RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])'));
                      });
                    },
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureTextConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: mainColor,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureTextConfirmPassword =
                                !obscureTextConfirmPassword;
                          });
                        },
                      ),
                    ),
                    obscureText: obscureTextConfirmPassword,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.arrow_forward),
                    backgroundColor: mainColor,
                    elevation: 0,
                    onPressed: () {
                      if (!(nameController.text.trim() != "" &&
                          emailController.text.trim() != "" &&
                          namaOutletController.text.trim() != "" &&
                          noHpController.text.trim() != "" &&
                          passwordController.text.trim() != "" &&
                          confirmPasswordController.text.trim() != "")) {
                        Flushbar(
                          duration: const Duration(milliseconds: 1500),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color(0xFFFF5C83),
                          message: "Silahkan Isi Kolom yang Kosong",
                        ).show(context);
                      } else if (passwordController.text !=
                          confirmPasswordController.text) {
                        Flushbar(
                          duration: const Duration(milliseconds: 1500),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color(0xFFFF5C83),
                          message: "Password Tidak Sama ",
                        ).show(context);
                      } else if (!isNoHpValid) {
                        Flushbar(
                          duration: const Duration(milliseconds: 1500),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color(0xFFFF5C83),
                          message: "No HP Tidak Valid",
                        ).show(context);
                      } else if (!isEmailTaken) {
                        Flushbar(
                          duration: const Duration(milliseconds: 1500),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color(0xFFFF5C83),
                          message: "Email Tidak Valid",
                        ).show(context);
                      } else if (!isPasswordValid) {
                        Flushbar(
                          duration: const Duration(milliseconds: 1500),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color(0xFFFF5C83),
                          message:
                              "Password Min 6 Karakter Kombinasi Huruf Besar dan Angka",
                        ).show(context);
                      } else if (!isNameValid) {
                        Flushbar(
                          duration: const Duration(milliseconds: 1500),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: const Color(0xFFFF5C83),
                          message: "Nama Min 3 Karakter",
                        ).show(context);
                      } else {
                        widget.registrationData.namaOutlet =
                            namaOutletController.text;
                        widget.registrationData.name = nameController.text;
                        widget.registrationData.email = emailController.text;
                        widget.registrationData.noHp = noHpController.text;
                        widget.registrationData.password =
                            passwordController.text;
                      }
                    },
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
