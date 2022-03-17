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

  Future<Pengguna> getUser(String id) async {
    DocumentSnapshot snapshot = await _collectionReference.doc(id).get();

    return Pengguna(
      id,
      snapshot.get('email'),
      name: snapshot.get('name'),
      profilePicture: snapshot.get('profilePicture'),
    );
  }
}
