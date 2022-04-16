part of 'extension.dart';

extension FirebaseUserExtension on User {
  Pengguna convertToPengguna({String name = 'no name'}) => Pengguna(
        uid,
        email,
        name: name,
      );

  Future<Pengguna> fromFirestoreNih() async =>
      await PenggunaServicesFirestore().getUser(uid);
}
