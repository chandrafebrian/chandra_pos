part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemaEvent extends ThemeEvent {
  final ThemeData themeData;

  const ChangeThemaEvent(this.themeData);

  @override
  List<Object> get props => [themeData];
}
