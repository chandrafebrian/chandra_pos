part of 'models.dart';
// cara membuat widget meja

// 1. buat tipe data model untuk nilai meja

class ModelNilaiMeja extends Equatable {
  final String id;
  final String namaMeja;
  final int nomorMeja;

  const ModelNilaiMeja({
    required this.id,
    required this.namaMeja,
    required this.nomorMeja,
  });

  @override
  List<Object?> get props => [id, namaMeja, nomorMeja];
}

List<ModelNilaiMeja> contohModelNilaiMejaList = [
  const ModelNilaiMeja(id: '0', namaMeja: 'Meja A1', nomorMeja: 5),
  const ModelNilaiMeja(id: '1', namaMeja: 'Meja A2', nomorMeja: 6),
  const ModelNilaiMeja(id: '2', namaMeja: 'Meja A3', nomorMeja: 7),
  const ModelNilaiMeja(id: '3', namaMeja: 'Meja A4', nomorMeja: 8),
  const ModelNilaiMeja(id: '0', namaMeja: 'Meja A1', nomorMeja: 5),
  const ModelNilaiMeja(id: '1', namaMeja: 'Meja A2', nomorMeja: 6),
  const ModelNilaiMeja(id: '2', namaMeja: 'Meja A3', nomorMeja: 7),
  const ModelNilaiMeja(id: '3', namaMeja: 'Meja A4', nomorMeja: 8),
  const ModelNilaiMeja(id: '0', namaMeja: 'Meja A1', nomorMeja: 5),
  const ModelNilaiMeja(id: '1', namaMeja: 'Meja A2', nomorMeja: 6),
  const ModelNilaiMeja(id: '2', namaMeja: 'Meja A3', nomorMeja: 7),
  const ModelNilaiMeja(id: '3', namaMeja: 'Meja A4', nomorMeja: 8),
];
