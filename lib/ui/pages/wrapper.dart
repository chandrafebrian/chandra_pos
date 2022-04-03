part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = context.watch<User?>();

    if (user == null) {
      context.read<PageBloc>().add(GoToSplashPage());
    } else {
      context.read<PageBloc>().add(GoToMainPage());
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (context, state) => (state is OnSplashPage)
            ? const SplashPage()
            : (state is OnLoginPage)
                ? const SignInPage()
                : const MainPage());
  }
}













// if (user == null) {
//       if (previousPageEvent is GoToSplashPage) {
//         previousPageEvent = GoToSplashPage();
//         context.read<PageBloc>().add(previousPageEvent!);
//       }
//     } else {
//       if (previousPageEvent is GoToMainPage) {
//         previousPageEvent = GoToMainPage();
//         context.read<PageBloc>().add(previousPageEvent!);
//       }
//     }
//     return BlocBuilder<PageBloc, PageState>(
//         builder: (context, pageState) => (pageState is OnSplashPage)
//             ? const SplashPage()
//             : (pageState is OnLoginPage)
//                 ? const SignInPage()
//                 : const MainPage());