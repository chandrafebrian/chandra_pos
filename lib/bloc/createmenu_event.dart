part of 'createmenu_bloc.dart';

abstract class CreatemenuEvent extends Equatable {
  const CreatemenuEvent();

  @override
  List<Object> get props => [];
}

class AmbilDataMenuEvent extends CreatemenuEvent {
  final String userID;

  const AmbilDataMenuEvent(this.userID);

  @override
  List<Object> get props => [userID];
}

class TambahDataMenuEvent extends CreatemenuEvent {
  final ModelMenu modelMenu;
  final String userID;

  const TambahDataMenuEvent(this.modelMenu, this.userID);

  @override
  List<Object> get props => [modelMenu, userID];
}
