part of 'models.dart';

class RegistrationData {
  String name;
  String email;
  String password;
  String noHp;
  String namaOutlet;
  List<String> selectedGenres;
  File? profilefoto;

  RegistrationData({
    this.name = '',
    this.email = '',
    this.password = '',
    this.noHp = '',
    this.namaOutlet = '',
    this.selectedGenres = const [],
    this.profilefoto,
  });
}
