part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController mengaturEmail = TextEditingController();
  TextEditingController mengaturPassword = TextEditingController();

  bool obscureText = true;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSignInValid = false;

  @override
  Widget build(BuildContext context) {
    context
        .read<ThemeBloc>()
        .add(ChangeTheme(ThemeData(primarySwatch: Colors.deepPurple)));

    return WillPopScope(
      onWillPop: () {
        context.read<PageBloc>().add(GoToSplashPage());
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 150),
                  SizedBox(
                    height: 70,
                    child: Image.asset('assets/logo.png'),
                  ),
                  const SizedBox(height: 18),
                  TextField(
                    onChanged: (value) {
                      // setstate untuk mengubah state tampilan ui saat ada perubahan

                      setState(() {
                        isEmailValid = EmailValidator.validate(value);
                      });
                    },
                    controller: mengaturEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 18),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        isPasswordValid = value.length >= 6;
                        isPasswordValid = value.contains(
                            RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])'));
                      });
                    },
                    controller: mengaturPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                          color: mainColor,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    ),
                    obscureText: obscureText,
                  ),

                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forget Password?',
                          style: mainTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      Text('Get Now',
                          style: mainTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(top: 40, bottom: 30),
                    child: isSignInValid
                        ? SpinKitFadingCircle(
                            color: mainColor,
                          )
                        : FloatingActionButton(
                            elevation: 0,
                            child: Icon(
                              Icons.arrow_forward,
                              color: isEmailValid && isPasswordValid
                                  ? Colors.white
                                  : Colors.white,
                            ),
                            backgroundColor: isEmailValid && isPasswordValid
                                ? mainColor
                                : const Color(0xFFE4E4E4),
                            onPressed: isEmailValid && isPasswordValid
                                ? () async {
                                    setState(() {
                                      isSignInValid = true;
                                    });

                                    SignSignUpResult result =
                                        await AuthServices().signIn(
                                            mengaturEmail.text,
                                            mengaturPassword.text);

                                    if (result.pengguna == null) {
                                      if (mounted) {
                                        setState(() {
                                          isSignInValid = false;
                                        });
                                      }
                                      Flushbar(
                                        duration: const Duration(seconds: 5),
                                        flushbarPosition: FlushbarPosition.TOP,
                                        backgroundColor:
                                            const Color(0xFFFF5C83),
                                        message: 'Email atau Password Salah',
                                      ).show(context);
                                    }
                                  }
                                : null,
                          ),
                  ),
                  // Row(
                  //   children: [
                  //     Text(
                  //       'data',
                  //       style: mainTextStyle.copyWith(fontSize: 10),
                  //     ),
                  //     Text(
                  //       'data',
                  //       style: mainTextStyle.copyWith(fontSize: 10),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
