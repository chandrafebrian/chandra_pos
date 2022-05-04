part of 'shared.dart';

final ImagePicker _picker = ImagePicker();

Future<File?> ambilGambar() async {
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  final File? file = File(image!.path);
  return file;
}

Future<String> uploadImage(File file) async {
  String fileName = basename(file.path);
  Reference ref = FirebaseStorage.instance.ref().child(fileName);
  UploadTask uploadTask = ref.putFile(file);
  TaskSnapshot taskSnapshot = uploadTask.snapshot;
  return await taskSnapshot.ref.getDownloadURL();
}
