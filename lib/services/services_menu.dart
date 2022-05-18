part of 'services.dart';

class ServicesMenu {
  final CollectionReference menuCollection =
      FirebaseFirestore.instance.collection('collectDataMenuFs');

  Future<void> saveMenukefirebase(String id) async {
    await menuCollection.doc(id).set({
      'id': id,
      'namaMenu': '',
      'harga': '',
      'foto': '',
      'kategori': '',
      'status': '',
      'idOutlet': '',
    });
  }
}
