part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // User? user = Provider.of<User?>(context);
    final User? user = context.watch<User?>();

    if (user == null) {
      return const SignInPage();
    } else {
      return const MainPage();
    }
  }
}
