import 'package:bloc/bloc.dart';
import 'package:chandra_pos/models/models.dart';
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
      } else if (event is GoToRegistrationPage) {
        emit(OnRegistrationPage(event.registrationData));
      } else if (event is GoToPreferencePage) {
        emit(OnPreferencePage(event.registrationData));
      } else if (event is GoToAccountConfirmationPage) {
        emit(OnAccountConfirmationPage(event.registrationData));
      } else if (event is GoToHistoryPage) {
        emit(OnHistoryPage());
      } else if (event is GoToReportsPage) {
        emit(OnReportsPage());
      } else if (event is GoToSettingsPage) {
        emit(OnSettingsPage());
      } else if (event is GoToInventoryPage) {
        emit(OnInventoryPage());
      } else if (event is GoToTableMapsPage) {
        emit(OnTableMapsPage());
      } else if (event is GoToBuatMenuBaru) {
        emit(OnBuatMenuBaru());
      }
    });
  }
}
