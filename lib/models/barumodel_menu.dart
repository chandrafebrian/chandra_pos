part of 'models.dart';

class BaruModelMenu extends Equatable {
  final String userID;
  final String namaBarang;
  final int hargaBarang;

  const BaruModelMenu(
    this.userID,
    this.namaBarang,
    this.hargaBarang,
  );

  BaruModelMenu copyWith(
          {String? userID, String? namaBarang, int? hargaBarang}) =>
      BaruModelMenu(userID ?? this.userID, namaBarang ?? this.namaBarang,
          hargaBarang ?? this.hargaBarang);

  @override
  List<Object?> get props => [userID, namaBarang, hargaBarang];
}
