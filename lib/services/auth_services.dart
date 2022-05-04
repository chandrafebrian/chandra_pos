part of 'services.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<SignSignUpResult> signUp(
      String email,
      String password,
      String name,
      String namaOutlet,
      String alamat,
      String kota,
      String noHp,
      List<String> selectedGenres) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      Pengguna pengguna = result.user!.convertToPengguna(
          name: name,
          noHp: noHp,
          namaOutlet: namaOutlet,
          alamat: alamat,
          kota: kota,
          selectedGenres: selectedGenres);

      await PenggunaServicesFirestore().updatePengguna(pengguna);
      return SignSignUpResult(pengguna: pengguna);
    } catch (e) {
      return SignSignUpResult(pesan: e.toString().split(',').first.trim());
    }
  }

  Future<SignSignUpResult> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      Pengguna pengguna = await result.user!.fromFirestoreNih();
      return SignSignUpResult(pengguna: pengguna);
    } catch (e) {
      return SignSignUpResult(pesan: e.toString().split(',').first.trim());
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Stream<User?> get userStream => _auth.authStateChanges();
}

class SignSignUpResult {
  Pengguna? pengguna;
  String? pesan;

  SignSignUpResult({this.pengguna, this.pesan});
}
// 