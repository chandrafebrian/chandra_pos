part of 'services.dart';

class ServicesMenu {
  static CollectionReference menuCollection =
      FirebaseFirestore.instance.collection('collectDataMenuFs');

  Future<void> saveMenukefirebase(String id, ModelMenu modelMenu) async {
    await menuCollection.doc().set({
      'userID': modelMenu.userID,
      'namaCreateMenu': modelMenu.namaCreateMenu,
      'hargaCreateMenu': modelMenu.hargaCreateMenu,
    });
  }

  Future<List<ModelMenu>> ambilDataMenuFirebase(String userID) async {
    DocumentSnapshot snapshot = await menuCollection.doc().get();

    var documents =
        snapshot.get((document) => document.data()['userID'] == userID);

    return documents
        .map((e) => ModelMenu(
              userID: e.data()['userID'],
              namaCreateMenu: e.data()['namaCreateMenu'],
              hargaCreateMenu: e.data()['hargaCreateMenu'],
            ))
        .toList();
  }
}
