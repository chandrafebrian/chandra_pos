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

class UpdateDataPengguna extends PenggunaEvent {
  final String? name;
  final String? namaOutlet;
  final String? kota;
  final String? noHp;
  final String? alamat;
  final String? updatefotobloc;

  const UpdateDataPengguna({
    this.updatefotobloc,
    this.namaOutlet,
    this.kota,
    this.name,
    this.noHp,
    this.alamat,
  });

  @override
  List<Object> get props => [
        updatefotobloc!,
        name!,
        namaOutlet!,
        kota!,
        noHp!,
        alamat!,
      ];
}
