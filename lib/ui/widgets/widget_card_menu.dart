part of 'widgets.dart';

class WidgetCardMenu extends StatelessWidget {
  final BaruModelMenu baruModelMenu;

  const WidgetCardMenu({Key? key, required this.baruModelMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<MenuBloc, MenuState>(
          builder: (context, state) {
            return Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // Text(baruModelMenu.namaMenu),
                  // const Spacer(),
                  // Text(modelNilaiMeja.nomorMeja.toString()),
                  // Column(
                  //   children: [
                  //     Text(
                  //       'No: ' + modelNilaiMeja.id,
                  //     ),
                  //   ],
                  // )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

// 