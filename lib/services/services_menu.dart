part of 'services.dart';

class ServicesMenu {
  static CollectionReference menuCollection =
      FirebaseFirestore.instance.collection('collectMenus');

  Future<void> saveMenukefirebase(BaruModelMenu baruModelMenu) async {
    await menuCollection.add({
      'email': '',
      'namaBarang': baruModelMenu.namaBarang,
      'hargaBarang': baruModelMenu.hargaBarang,
    });
  }

  // Future<List<BaruModelMenu>> ambilDataMenuFirebase(String userID) async {
  //   DocumentSnapshot snapshot = await menuCollection.doc().get();

  //   var documents =
  //       snapshot.get((document) => document.data()['userID'] == userID);

  //   List<BaruModelMenu> baruModelMenu = [];

  //   for (var documentDariFirebase in documents) {
  //     baruModelMenu.add(BaruModelMenu(
  //       documentDariFirebase.data()['email'],
  //       documentDariFirebase.data()['userID'],
  //       documentDariFirebase.data()['namaBarang'],
  //       documentDariFirebase.data()['hargaBarang'],
  //     ));
  //   }
  //   return baruModelMenu;
  // }
}
