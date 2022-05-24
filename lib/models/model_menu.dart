part of 'models.dart';
// lengkah ke 1.

class ModelMenu extends Equatable {
  final String userID;
  final String namaCreateMenu;
  final String hargaCreateMenu;

  const ModelMenu({
    required this.userID,
    required this.namaCreateMenu,
    required this.hargaCreateMenu,
  });

  @override
  List<Object> get props => [
        userID,
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
