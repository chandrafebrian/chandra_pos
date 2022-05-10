part of 'widgets.dart';

class WidgetMejaCard extends StatelessWidget {
  final ModelNilaiMeja modelNilaiMeja;

  const WidgetMejaCard({Key? key, required this.modelNilaiMeja})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text(modelNilaiMeja.namaMeja),
                  Text(modelNilaiMeja.nomorMeja.toString()),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
