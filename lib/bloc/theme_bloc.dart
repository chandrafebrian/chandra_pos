import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(ThemeData(primaryColor: Colors.redAccent))) {
    on<ThemeEvent>((event, emit) {
      if (event is ChangeTheme) {
        emit(ThemeState(event.themeData));
      }
    });
  }
}
