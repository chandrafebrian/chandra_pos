import 'package:bloc/bloc.dart';
import 'package:chandra_pos/models/models.dart';
import 'package:chandra_pos/services/services.dart';
import 'package:equatable/equatable.dart';
part 'pengguna_event.dart';
part 'pengguna_state.dart';

class PenggunaBloc extends Bloc<PenggunaEvent, PenggunaState> {
  PenggunaBloc() : super(PenggunaInitial()) {
    on<PenggunaEvent>((event, emit) async {
      if (event is PenggunaMasuk) {
        Pengguna pengguna = await PenggunaServicesFirestore().getUser(event.id);
        emit(PenggunaLoading(pengguna));
      } else if (event is SignOut) {
        emit(PenggunaInitial());
      } else if (event is UpdateDataPengguna) {
        Pengguna updatedUser = (state as PenggunaLoading).pengguna.copyWith(
              name: event.name,
              namaOutlet: event.namaOutlet,
              kota: event.kota,
              noHp: event.noHp,
              alamat: event.alamat,
              profilePicture: event.profilePicture,
            );
        await PenggunaServicesFirestore().updatePengguna(updatedUser);
        emit(PenggunaLoading(updatedUser));
      }
    });
  }

  get pengguna => (state as PenggunaLoading).pengguna.id;
}
