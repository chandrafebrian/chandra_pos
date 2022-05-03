part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = context.watch<User?>();

    if (user == null) {
      if (previousPageEvent is! GoToSplashPage) {
        previousPageEvent = GoToSplashPage();
        context.read<PageBloc>().add(previousPageEvent!);
      }
    } else {
      if (previousPageEvent is! GoToMainPage) {
        context.read<PenggunaBloc>().add(PenggunaMasuk(user.uid));
        previousPageEvent = GoToMainPage();
        context.read<PageBloc>().add(previousPageEvent!);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (context, state) => (state is OnSplashPage)
            ? const SplashPage()
            : (state is OnLoginPage)
                ? const SignInPage()
                : (state is OnRegistrationPage)
                    ? SignUpPage(key, state.registrationData)
                    : (state is OnPreferencePage)
                        ? PreferencePage(key, state.registrationData)
                        : (state is OnAccountConfirmationPage)
                            ? AccountConfirmationPage(
                                key, state.registrationData)
                            : const MainPage());
  }
}
