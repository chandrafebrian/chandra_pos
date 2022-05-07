part of 'shared.dart';

const double defaultMargin = 24;

MaterialColor warnaUtamaChandraPos = const MaterialColor(
  0xff268212,
  <int, Color>{
    50: Color(0xff268212),
    100: Color(0xff268212),
    200: Color(0xff268212),
    300: Color(0xff268212),
    400: Color(0xff268212),
    500: Color(0xff268212),
    600: Color(0xff268212),
    700: Color(0xff268212),
    800: Color(0xff268212),
    900: Color(0xff268212),
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