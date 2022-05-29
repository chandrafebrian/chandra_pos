part of 'widgets.dart';

// 2. buat widget kerangka template meja ambil nilai dari model

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
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(modelNilaiMeja.namaMeja),
              const Spacer(),
              Text(modelNilaiMeja.nomorMeja.toString()),
              Column(
                children: [
                  Text(
                    'No: ' + modelNilaiMeja.id,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
