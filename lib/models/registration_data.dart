part of 'models.dart';

class RegistrationData {
  String name;
  String email;
  String password;
  int noHp;
  String namaOutlet;
  List<String> selectedGenres;
  File? profilefoto;

  RegistrationData({
    this.name = '',
    this.email = '',
    this.password = '',
    this.noHp = 0,
    this.namaOutlet = '',
    this.selectedGenres = const [],
    this.profilefoto,
  });
}
