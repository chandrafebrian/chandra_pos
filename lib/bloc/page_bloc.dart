import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageInitial()) {
    on<PageEvent>((event, emit) {
      if (event is GoToLoginPage) {
        emit(OnLoginPage());
      } else if (event is GoToSplashPage) {
        emit(OnSplashPage());
      } else if (event is GoToMainPage) {
        emit(OnMainPage());
      }
    });
  }
}
