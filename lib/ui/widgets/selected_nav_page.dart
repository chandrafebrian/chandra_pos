part of 'widgets.dart';

Widget createDrawerHalamanNavBar({
  IconData? icon,
  String? text,
  GestureTapCallback? onTap,
  bool? isSelected,
  Color? color,
}) {
  return Ink(
    color: isSelected! ? const Color(0xffE3EAFF) : Colors.transparent,
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
