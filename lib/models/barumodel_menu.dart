part of 'models.dart';

class BaruModelMenu extends Equatable {
  final String id;
  final String namaBarang;
  final int hargaBarang;

  const BaruModelMenu({
    required this.hargaBarang,
    required this.id,
    required this.namaBarang,
  });

  @override
  List<Object?> get props => [id, namaBarang, hargaBarang];
}
