part of 'models.dart';

class Pengguna extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? noHp;
  final String? namaOutlet;
  final String? alamat;
  final String? kota;
  final List<String>? selectedGenres;
  final String? profilePicture;

  const Pengguna(
    this.id,
    this.email, {
    this.namaOutlet,
    this.alamat,
    this.kota,
    this.noHp,
    this.selectedGenres,
    this.name,
    this.profilePicture,
  });

  Pengguna copyWith({
    String? name,
    String? noHp,
    String? namaOutlet,
    String? alamat,
    String? kota,
    String? profilePicture,
  }) {
    return Pengguna(
      id,
      email,
      name: name ?? this.name,
      noHp: noHp ?? this.noHp,
      namaOutlet: namaOutlet ?? this.namaOutlet,
      alamat: alamat ?? this.alamat,
      kota: kota ?? this.kota,
      profilePicture: profilePicture ?? this.profilePicture,
      selectedGenres: selectedGenres,
    );
  }

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
        namaOutlet,
        alamat,
        kota,
        noHp,
        selectedGenres,
      ];
}
