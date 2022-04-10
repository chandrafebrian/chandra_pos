part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

TextEditingController mengaturEmail = TextEditingController();
TextEditingController mengaturPassword = TextEditingController();

bool obscureText = true;
bool isEmailValid = false;
bool isPasswordValid = false;
bool isSignInValid = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    context
        .read<ThemeBloc>()
        .add(ChangeTheme(ThemeData(primarySwatch: Colors.deepPurple)));

    return Scaffold(
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
                  child: FloatingActionButton(
                    onPressed: () {
                      //untuk tombol  sign in
                    },
                    child: const Icon(Icons.arrow_forward),
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
    );
  }
}
