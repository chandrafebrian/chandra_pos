part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

TextEditingController mengaturEmail = TextEditingController();
TextEditingController mengaturPassword = TextEditingController();

bool isEmailValid = false;
bool isPasswordValid = false;
bool isSignInValid = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: mengaturEmail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: mengaturPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 6),
              Row(
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
                    //untuk tombol signup
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ),
              Row(
                children: [
                  Text(
                    'data',
                    style: mainTextStyle.copyWith(fontSize: 10),
                  ),
                  Text(
                    'data',
                    style: mainTextStyle.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
