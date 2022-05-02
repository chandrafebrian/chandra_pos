part of 'widgets.dart';

class SelectableBox extends StatelessWidget {
  final bool? isSelected;
  final bool? isEnabeled;
  final double? widht;
  final double? height;
  final String? text;
  final Function? onTap;
  final TextStyle? textStyle;

  const SelectableBox({
    Key? key,
    this.isSelected,
    this.isEnabeled,
    this.widht,
    this.height,
    this.text,
    this.onTap,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
