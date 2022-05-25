part of 'models.dart';
// lengkah ke 1.

class ModelMenu extends Equatable {
  final String namaCreateMenu;
  final String hargaCreateMenu;

  const ModelMenu(
    this.namaCreateMenu,
    this.hargaCreateMenu,
  );

  @override
  List<Object> get props => [
        namaCreateMenu,
        hargaCreateMenu,
      ];
}













// class ModelMenu extends Equatable {
//   final String namaCreateMenu;
//   final String hargaCreateMenu;

//   const ModelMenu(this.namaCreateMenu, this.hargaCreateMenu);

//   ModelMenu copyWith({String? namaCreateMenu, String? hargaCreateMenu}) =>
//       ModelMenu(
//         namaCreateMenu ?? this.namaCreateMenu,
//         hargaCreateMenu ?? this.hargaCreateMenu,
//       );

//   //
//   @override
//   List<Object?> get props => [namaCreateMenu, hargaCreateMenu];
// }
