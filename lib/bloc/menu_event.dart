part of 'menu_bloc.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();

  @override
  List<Object> get props => [];
}

class GetMenuEvent extends MenuEvent {
  final String userID;

  const GetMenuEvent(this.userID);

  @override
  List<Object> get props => [userID];
}

class SaveMenuEvent extends MenuEvent {
  final String userID;
  final BaruModelMenu baruModelMenu;

  const SaveMenuEvent(this.userID, this.baruModelMenu);

  @override
  List<Object> get props => [userID, baruModelMenu];
}
