part of 'services.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signUp(String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      Pengguna pengguna = result.user!.convertToPengguna(name: name);
    } catch (e) {}
  }
}
