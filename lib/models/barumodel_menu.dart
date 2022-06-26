part of 'models.dart';

class BaruModelMenu {
  String namaBarang;
  int hargaBarang;

  BaruModelMenu({
    this.namaBarang = '',
    this.hargaBarang = 0,
  });
}

// class BaruModelMenu extends Equatable {
//   final String email;
//   final String userID;
//   final String namaBarang;
//   final int hargaBarang;

//   const BaruModelMenu(
//     this.email,
//     this.userID,
//     this.namaBarang,
//     this.hargaBarang,
//   );

//   BaruModelMenu copyWith(
//           {String? email,
//           String? userID,
//           String? namaBarang,
//           int? hargaBarang}) =>
//       BaruModelMenu(email ?? this.email, userID ?? this.userID,
//           namaBarang ?? this.namaBarang, hargaBarang ?? this.hargaBarang);

//   @override
//   List<Object?> get props => [email, userID, namaBarang, hargaBarang];
// }
