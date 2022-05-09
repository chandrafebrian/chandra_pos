part of 'models.dart';

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
  List<Object?> get props => throw UnimplementedError();
}
