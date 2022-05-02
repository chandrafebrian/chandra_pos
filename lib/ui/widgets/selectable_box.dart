part of 'widgets.dart';

class SelectableBox extends StatelessWidget {
  const SelectableBox(
    this.text, {
    Key? key,
    this.isSelected = false,
    this.isEnabeled = true,
    this.widht = 144,
    this.height = 60,
    this.onTap,
    this.textStyle,
  }) : super(key: key);

  final bool isSelected;
  final bool isEnabeled;
  final double widht;
  final double height;
  final String? text;
  final Function? onTap;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        width: widht,
        height: height,
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
            style: (textStyle ?? mainTextStyle).copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
