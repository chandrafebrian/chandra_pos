part of 'services.dart';

// langakah 2
class ServicesMenu {
  static CollectionReference menuCollection =
      FirebaseFirestore.instance.collection('collectMenus');

  Future<void> saveMenukefirebase(BaruModelMenu baruModelMenu) async {
    await menuCollection.doc().set({
      'userId': baruModelMenu.userId,
      'namaBarang': baruModelMenu.namaBarang,
      'hargaBarang': baruModelMenu.hargaBarang,
    });
  }

  Future<List<BaruModelMenu>> ambilDataMenuFirebase(String userId) async {
    DocumentSnapshot snapshot = await menuCollection.doc().get();

    var documents =
        snapshot.get((document) => document.data()['userId'] == userId);

    List<BaruModelMenu> baruModelMenuList = [];

    for (var documentDariFirebase in documents) {
      baruModelMenuList.add(BaruModelMenu(
        userId: documentDariFirebase.data()['userId'],
        namaBarang: documentDariFirebase.data()['namaBarang'],
        hargaBarang: documentDariFirebase.data()['hargaBarang'],
      ));
    }
    return documents;
  }
}
