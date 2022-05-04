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
        Pengguna user = await PenggunaServicesFirestore().getUser(event.id);
        emit(PenggunaLoading(user));
      } else if (event is SignOut) {
        emit(PenggunaInitial());
      }
    });
  }
}
