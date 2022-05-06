part of 'shared.dart';

const double defaultMargin = 24;

MaterialColor warnaUtamaChandraPos = const MaterialColor(
  0xff1D8509,
  <int, Color>{
    50: Color(0xff1D8509),
    100: Color(0xff1D8509),
    200: Color(0xff1D8509),
    300: Color(0xff1D8509),
    400: Color(0xff1D8509),
    500: Color(0xff1D8509),
    600: Color(0xff1D8509),
    700: Color(0xff1D8509),
    800: Color(0xff1D8509),
    900: Color(0xff1D8509),
  },
);
Color white = const Color(0xFFFFFFFF);
Color accentColor1 = const Color(0xFF2C1F63);
Color accentColor2 = const Color(0xFFFBD460);
Color accentColor3 = const Color(0xFFF8B500);

TextStyle mainTextStyle = GoogleFonts.lato().copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

TextStyle textKeduaPutih = GoogleFonts.lato().copyWith(
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

MaterialColor? kPrimaryColor =
    const Color.fromARGB(255, 150, 11, 102) as MaterialColor;

// theme: ThemeData(
//     primarySwatch: kPrimaryColor,
// ),