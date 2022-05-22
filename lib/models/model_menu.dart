part of 'models.dart';
// lengkah ke 1.

class ModelMenu {
  String? namaCreateMenu;
  int? hargaCreateMenu;

  ModelMenu({
    this.namaCreateMenu,
    this.hargaCreateMenu,
  });
}








// class ModelMenu extends Equatable {
//   final String namaCreateMenu;
//   final int hargaCreateMenu;

//   const ModelMenu(this.namaCreateMenu, this.hargaCreateMenu);

//   ModelMenu copyWith({String? namaCreateMenu, int? hargaCreateMenu}) =>
//       ModelMenu(
//         namaCreateMenu ?? this.namaCreateMenu,
//         hargaCreateMenu ?? this.hargaCreateMenu,
//       );

//   //
//   @override
//   List<Object?> get props => [namaCreateMenu, hargaCreateMenu];
// }
