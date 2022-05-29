part of 'services.dart';

class ServicesMenu {
  static CollectionReference menuCollection =
      FirebaseFirestore.instance.collection('collectMenus');

  Future<void> saveMenukefirebase(
      String id, BaruModelMenu baruModelMenu) async {
    await menuCollection.doc().set({
      'userID': id,
      'namaBarang': baruModelMenu.namaBarang,
      'hargaBarang': baruModelMenu.hargaBarang,
    });
  }

  Future<List<BaruModelMenu>> ambilDataMenuFirebase(String userId) async {
    DocumentSnapshot snapshot = await menuCollection.doc().get();

    var documents =
        snapshot.get((document) => document.data()['userID'] == userId);

    List<BaruModelMenu> baruModelMenu = [];

    for (var documentDariFirebase in documents) {
      baruModelMenu.add(BaruModelMenu(
        documentDariFirebase.data()['namaBarang'],
        documentDariFirebase.data()['hargaBarang'],
      ));
    }
    return baruModelMenu;
  }
}
