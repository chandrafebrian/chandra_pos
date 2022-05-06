part of 'pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
            Container(
              height: 136,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70, bottom: 16),
              child: Text(
                'New Enterprise',
                style: mainTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              'data',
              style: mainTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w300),
            ),
            Container(
              width: 250,
              height: 46,
              margin: const EdgeInsets.only(top: 70, bottom: 19),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: warnaUtamaChandraPos,
                ),
                onPressed: () {
                  context
                      .read<PageBloc>()
                      .add(GoToRegistrationPage(RegistrationData()));
                },
                child: Text(
                  'Get Started',
                  style: mainTextStyle.copyWith(fontSize: 16, color: white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: mainTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PageBloc>().add(GoToLoginPage());
                  },
                  child: Text(
                    ' Sign In',
                    style: mainTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: warnaUtamaChandraPos,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
