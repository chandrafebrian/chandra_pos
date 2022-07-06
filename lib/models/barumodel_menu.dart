part of 'models.dart';

class BaruModelMenu {
  String email;
  String namaBarang;
  int hargaBarang;

  BaruModelMenu({
    this.email = '',
    this.namaBarang = '',
    this.hargaBarang = 0,
  });
}

// class BaruModelMenu extends Equatable {
//   String? namaBarang;
//   int? hargaBarang;

//   BaruModelMenu({
//     this.namaBarang,
//     this.hargaBarang,
//   });

//   BaruModelMenu copyWith({String? namaBarang, int? hargaBarang}) {
//     return BaruModelMenu(
//       namaBarang: namaBarang ?? this.namaBarang,
//       hargaBarang: hargaBarang ?? this.hargaBarang,
//     );
//   }

//   @override
//   String toString() {
//     return ' $namaBarang , $hargaBarang';
//   }

//   @override
//   List<Object?> get props => [
//         namaBarang,
//         hargaBarang,
//       ];
// }
