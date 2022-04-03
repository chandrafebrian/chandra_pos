part of 'pengguna_bloc.dart';

abstract class PenggunaEvent extends Equatable {
  const PenggunaEvent();

  @override
  List<Object> get props => [];
}

class PenggunaMasuk extends PenggunaEvent {
  final String id;

  const PenggunaMasuk(this.id);

  @override
  List<Object> get props => [id];
}

class SignOut extends PenggunaEvent {
  @override
  List<Object> get props => [];
}
