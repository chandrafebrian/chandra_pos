part of 'pengguna_bloc.dart';

abstract class PenggunaState extends Equatable {
  const PenggunaState();

  @override
  List<Object> get props => [];
}

class PenggunaInitial extends PenggunaState {
  @override
  List<Object> get props => [];
}

class PenggunaLoading extends PenggunaState {
  final Pengguna pengguna;

  const PenggunaLoading(this.pengguna);
  @override
  List<Object> get props => [pengguna];
}
