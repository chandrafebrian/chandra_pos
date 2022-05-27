import 'package:bloc/bloc.dart';
import 'package:chandra_pos/models/models.dart';
import 'package:chandra_pos/services/services.dart';
import 'package:equatable/equatable.dart';
part 'createmenu_event.dart';
part 'createmenu_state.dart';

class CreatemenuBloc extends Bloc<CreatemenuEvent, CreatemenuState> {
  CreatemenuBloc() : super(const CreatemenuState([])) {
    on<CreatemenuEvent>((event, emit) async {
      //
      if (event is TambahDataMenuEvent) {
        await ServicesMenu().saveMenukefirebase(event.userID, event.modelMenu);

        List<ModelMenu> modelMenus = state.modelMenus + [event.modelMenu];

        emit(CreatemenuState(modelMenus));
      } else if (event is AmbilDataMenudariFirebaseEvent) {
        List<ModelMenu> modelMenus =
            await ServicesMenu().ambilDataMenuFirebase(event.userID);

        emit(CreatemenuState(modelMenus));
      }
    });
  }
}
