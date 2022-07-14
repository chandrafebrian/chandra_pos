part of 'widgets.dart';

class WidgetCardMenu extends StatelessWidget {
  final List<BaruModelMenu> baruModelMenuList;

  const WidgetCardMenu({Key? key, required this.baruModelMenuList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<MenuBloc, MenuState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.baruModelMenuList.length,
              itemBuilder: (context, index) => Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nama Menu: ' +
                        state.baruModelMenuList[index].namaBarang),
                    const Spacer(),
                    Text('Harga :' +
                        state.baruModelMenuList[index].hargaBarang.toString()),
                    Column(
                      children: [
                        Text(
                          'No: ' + state.baruModelMenuList[index].userId,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}


 // height: 80,
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              // decoration: BoxDecoration(
              //   color: Colors.blueGrey,
              //   borderRadius: BorderRadius.circular(10),
              // ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text('Menu : ' + baruModelMenu.namaBarang),
              //     const Spacer(),
              //     Text('Harga : ' + baruModelMenu.hargaBarang.toString()),
              //   ],
              // ),