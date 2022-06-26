part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRegistrationPage extends PageEvent {
  final RegistrationData registrationData;

  const GoToRegistrationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegistrationData registrationData;

  const GoToPreferencePage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;

  const GoToAccountConfirmationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

// class GoToHistoryPage extends PageEvent {
// final ModelMenu modelMenu;
// const GoToHistoryPage(this.modelMenu);
//   @override
//   List<Object> get props => [];
// }

// class GoToReportsPage extends PageEvent {
//   @override
//   List<Object> get props => [];
// }

// class GoToSettingsPage extends PageEvent {
//   @override
//   List<Object> get props => [];
// }

// class GoToTableMapsPage extends PageEvent {
//   @override
//   List<Object> get props => [];
// }

// class GoToInventoryPage extends PageEvent {
//   @override
//   List<Object> get props => [];
// }

class GoToHalamanMenu extends PageEvent {
  final BaruModelMenu baruModelMenu;

  const GoToHalamanMenu(this.baruModelMenu);
  @override
  List<Object> get props => [];
}
