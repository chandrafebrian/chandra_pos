import 'package:bloc/bloc.dart';
import 'package:chandra_pos/models/models.dart';
import 'package:chandra_pos/services/services.dart';
import 'package:equatable/equatable.dart';
part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(const MenuState([])) {
    on<MenuEvent>((event, emit) async {
      if (event is SaveMenuEvent) {
        await ServicesMenu().saveMenukefirebase(event.baruModelMenu);

        List<BaruModelMenu> baruModelMenusList =
            state.baruModelMenusList + [event.baruModelMenu];
        emit(MenuState(baruModelMenusList));
      } else if (event is GetMenuEvent) {
        List<BaruModelMenu> baruModelMenuList =
            await ServicesMenu().ambilDataMenuFirebase(event.userId);

        emit(MenuState(baruModelMenuList));
      }
    });
  }
}
