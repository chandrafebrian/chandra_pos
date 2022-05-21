import 'package:bloc/bloc.dart';
import 'package:chandra_pos/models/models.dart';
import 'package:equatable/equatable.dart';

part 'createmenu_event.dart';
part 'createmenu_state.dart';

class CreatemenuBloc extends Bloc<CreatemenuEvent, CreatemenuState> {
  CreatemenuBloc() : super(const CreatemenuState([])) {
    on<CreatemenuEvent>((event, emit) {
      //
    });
  }
}
