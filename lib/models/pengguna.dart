part of 'models.dart';

class Pengguna extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? noHp;
  final String? namaOutlet;
  final String? alamat;
  final String? kota;
  final List<String?> selectedGenres;
  final String? profilePicture;

  const Pengguna(
    this.id,
    this.email, {
    this.namaOutlet,
    this.alamat,
    this.kota,
    this.noHp,
    this.selectedGenres = const [],
    this.name,
    this.profilePicture,
  });

  @override
  String toString() {
    return '[$id] - $name , $email';
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
      ];
}
