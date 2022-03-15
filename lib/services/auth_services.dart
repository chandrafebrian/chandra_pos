part of 'services.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<SignSignUpResult> signUp(
      String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      Pengguna pengguna = result.user!.convertToPengguna(name: name);

      await PenggunaServicesFirestore().updatePengguna(pengguna);
      return SignSignUpResult(pengguna: pengguna);
    } catch (e) {
      return SignSignUpResult(pesan: e.toString());
    }
  }
}

class SignSignUpResult {
  Pengguna? pengguna;
  String? pesan;

  SignSignUpResult({this.pengguna, this.pesan});
}
