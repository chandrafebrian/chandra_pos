part of 'widgets.dart';

Widget createDrawerHalamanNavBar({
  final IconData? icon,
  final String? text,
  final GestureTapCallback? onTap,
  final bool? isSelectedHalamanBar,
  final Color? color,
}) {
  return Ink(
    color: isSelectedHalamanBar! ? const Color(0xff006622) : Colors.transparent,
    child: ListTile(
      selected: true,
      hoverColor: Colors.red,
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white),
          const SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text!,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}

// warna selected navbar
// const Color(0xff006622)