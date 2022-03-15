part of 'services.dart';

class PenggunaServicesFirestore {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('collectDataPenggunaFs');

  Future<void> updatePengguna(Pengguna pengguna) async {
    _collectionReference.doc(pengguna.id).set({
      'email': pengguna.email,
      'name': pengguna.name,
      'photoProfile': pengguna.profilePicture ?? ''
    });
  }
}
