part of 'widgets.dart';

class SelectedNavbarHalaman extends StatelessWidget {
  final bool isSelected;
  final bool isEnabeled;
  final String? text;
  final Function? onTap;
  final TextStyle? textStyle;

  const SelectedNavbarHalaman(
    this.text, {
    Key? key,
    this.isSelected = false,
    this.isEnabeled = true,
    this.onTap,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }

        (!isEnabeled)
            ? const Color(0xffe4e4e4)
            : isSelected
                ? accentColor2
                : Colors.transparent;
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: (!isEnabeled)
              ? const Color(0xffe4e4e4)
              : isSelected
                  ? accentColor2
                  : Colors.transparent,
          border: Border.all(
            color: (!isEnabeled)
                ? const Color(0xffe4e4e4)
                : isSelected
                    ? Colors.transparent
                    : const Color(0xFFE4E4E4),
          ),
        ),
        child: Center(
          child: Text(
            text ?? 'None',
            style: (textStyle ??
                GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.black,
                )),
          ),
        ),
      ),
    );
  }
}
