part of 'pages.dart';

class PreferencePage extends StatefulWidget {
  final RegistrationData registrationData;
  const PreferencePage(Key? key, this.registrationData) : super(key: key);

  @override
  State<PreferencePage> createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.registrationData.password = '';

        context
            .read<PageBloc>()
            .add(GoToRegistrationPage(widget.registrationData));
        return false;
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 56,
                    margin: const EdgeInsets.only(top: 20, bottom: 4),
                    child: GestureDetector(
                      onTap: () {
                        widget.registrationData.password = '';
                        context
                            .read<PageBloc>()
                            .add(GoToRegistrationPage(widget.registrationData));
                      },
                      child: const Icon(Icons.arrow_back),
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
