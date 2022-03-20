part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sing In Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthServices().signIn('chandra@gmail.com', '123456');
          },
          child: const Text('Sign In'),
        ),
      ),
    );
  }
}
