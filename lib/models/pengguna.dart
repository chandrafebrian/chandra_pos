part of 'models.dart';

class Pengguna extends Equatable {
  final String id;
  final String email;
  final String? name;
  final String? profilePicture;

  const Pengguna(
    this.id,
    this.email, {
    this.name,
    this.profilePicture,
  });

  @override
  String toString() {
    return '[$id] - $name , $email';
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
      ];
}
