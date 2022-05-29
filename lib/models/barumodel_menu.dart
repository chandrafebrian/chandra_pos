part of 'models.dart';

class BaruModelMenu extends Equatable {
  final String namaBarang;
  final int hargaBarang;

  const BaruModelMenu(
    this.namaBarang,
    this.hargaBarang,
  );

  BaruModelMenu copyWith({String? namaBarang, int? hargaBarang}) =>
      BaruModelMenu(
          namaBarang ?? this.namaBarang, hargaBarang ?? this.hargaBarang);

  @override
  List<Object?> get props => [namaBarang, hargaBarang];
}
