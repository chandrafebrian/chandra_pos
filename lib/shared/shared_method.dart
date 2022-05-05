part of 'shared.dart';

final ImagePicker _picker = ImagePicker();

Future ambilGambar() async {
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  if (image == null) return null;

  final File file = File(image.path);
  return file;
}

Future<String> uploadImage(File file) async {
  String fileName = basename(file.path);
  Reference ref = FirebaseStorage.instance.ref().child(fileName);
  UploadTask uploadTask = ref.putFile(file);
  TaskSnapshot taskSnapshot = await uploadTask;
  return await taskSnapshot.ref.getDownloadURL();
}


// Future<void> setPicture(String pathStorage) async {
//     try {
//       final File file = await imgFromGallery();
//       if (file == null) return;
//       FirebaseStorage.instance.ref(pathStorage).putFile(file);
//       return;
//     } catch (e) {
//       print(e);
//     }
//   }

// TaskSnapshot snapshot1 = await task1;
// TaskSnapshot snapshot2 = await task2;
// TaskSnapshot snapshot3 = await task3;

// imageUrl1 = await snapshot1.ref.getDownloadURL();
// imageUrl2 = await snapshot2.ref.getDownloadURL();
// imageUrl3 = await snapshot3.ref.getDownloadURL();