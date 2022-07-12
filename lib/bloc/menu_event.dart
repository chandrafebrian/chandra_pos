part of 'menu_bloc.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();

  @override
  List<Object> get props => [];
}

class SaveMenuEvent extends MenuEvent {
  final String userId;
  final BaruModelMenu baruModelMenu;

  const SaveMenuEvent(this.userId, this.baruModelMenu);

  @override
  List<Object> get props => [userId, baruModelMenu];
}

class GetMenuEvent extends MenuEvent {
  final String userId;

  const GetMenuEvent(this.userId);

  @override
  List<Object> get props => [userId];
}
