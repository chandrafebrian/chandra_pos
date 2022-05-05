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
