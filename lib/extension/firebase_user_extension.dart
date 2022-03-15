part of 'extension.dart';

extension FirebaseUserExtension on User {
  Pengguna convertToPengguna({String name = 'no name', int balance = 5000}) =>
      Pengguna(
        uid,
        email,
        name: name,
      );
}
