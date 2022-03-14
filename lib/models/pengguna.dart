part of 'models.dart';

class Pengguna extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? profilePicture;
  final int? balance;

  const Pengguna(this.id, this.email,
      {this.name, this.profilePicture, this.balance});

  @override
  List<Object?> get props => [id, email, name, profilePicture, balance];
}
