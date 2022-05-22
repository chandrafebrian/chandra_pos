part of 'services.dart';

class ServicesMenu {
  final CollectionReference menuCollection =
      FirebaseFirestore.instance.collection('collectDataMenuFs');

  Future<void> saveMenukefirebase(String id, ModelMenu modelMenu) async {
    await menuCollection.doc(id).set({
      'userID': id,
      'namaCreateMenu': modelMenu.namaCreateMenu,
      'hargaCreateMenu': modelMenu.hargaCreateMenu,
    });
  }

  Future<List<ModelMenu>> ambilDataMenuFirebase(String userId) async {
    DocumentSnapshot snapshot = await menuCollection.doc().get();
    var documents = snapshot.get((document) => document['userID'] == userId);

    List<ModelMenu> modelMenus = [];
    for (var document in documents) {
      modelMenus.add(ModelMenu(
        document.data()['namaCreateMenu'],
        document.data()['hargaCreateMenu'],
      ));
    }

    return modelMenus;
  }
}
