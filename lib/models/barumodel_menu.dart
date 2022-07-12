part of 'models.dart';

// langkah 1

class BaruModelMenu {
  String userId;
  String namaBarang;
  int hargaBarang;

  BaruModelMenu({
    this.userId = '',
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
