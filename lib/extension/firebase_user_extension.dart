part of 'extension.dart';

extension FirebaseUserExtension on User {
  Pengguna convertToPengguna(
          {String name = 'No Name',
          List<String> selectedGenres = const [],
          String noHp = 'No Name',
          String namaOutlet = 'No Name',
          String alamat = 'No Name',
          String kota = 'No Name'}) =>
      Pengguna(
        uid,
        email,
        name: name,
        selectedGenres: selectedGenres,
        noHp: noHp,
        namaOutlet: namaOutlet,
        alamat: alamat,
        kota: kota,
      );

  Future<Pengguna> fromFirestoreNih() async =>
      await PenggunaServicesFirestore().getUser(uid);
}

extension FirebaseMenuUserExtension on User {}
