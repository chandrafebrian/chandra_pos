part of 'services.dart';

class PenggunaServicesFirestore {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('collectDataPenggunaFs');

  Future<void> updatePengguna(Pengguna pengguna) async {
    await _collectionReference.doc(pengguna.id).set({
      'namaOutlet': pengguna.namaOutlet,
      'alamat': pengguna.alamat,
      'kota': pengguna.kota,
      'noHp': pengguna.noHp,
      'selectedGenres': pengguna.selectedGenres,
      'email': pengguna.email,
      'name': pengguna.name,
      'profilePicture': pengguna.profilePicture ?? '',
    });
  }

  Future<Pengguna> getUser(String id) async {
    DocumentSnapshot snapshot = await _collectionReference.doc(id).get();

    return Pengguna(
      id,
      snapshot.get('email'),
      name: snapshot.get('name'),
      namaOutlet: snapshot.get('namaOutlet'),
      alamat: snapshot.get('alamat'),
      kota: snapshot.get('kota'),
      noHp: snapshot.get('noHp'),
      selectedGenres: snapshot.get('selectedGenres').toString().split(','),
      profilePicture: snapshot.get('profilePicture'),
    );
  }
}
