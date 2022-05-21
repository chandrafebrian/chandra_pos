part of 'createmenu_bloc.dart';

abstract class CreatemenuEvent extends Equatable {
  const CreatemenuEvent();

  @override
  List<Object> get props => [];
}

class AmbilDataMenu extends CreatemenuEvent {
  final String userID;

  const AmbilDataMenu(this.userID);

  @override
  List<Object> get props => [userID];
}

class TambahDataMenu extends CreatemenuEvent {
  final ModelMenu modelMenu;
  final String userID;

  const TambahDataMenu(this.modelMenu, this.userID);

  @override
  List<Object> get props => [modelMenu, userID];
}
