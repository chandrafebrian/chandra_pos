part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();

  @override
  List<Object> get props => [];
}

class PageInitial extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRegistrationPage extends PageState {
  final RegistrationData registrationData;

  const OnRegistrationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnPreferencePage extends PageState {
  final RegistrationData registrationData;

  const OnPreferencePage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnAccountConfirmationPage extends PageState {
  final RegistrationData registrationData;

  const OnAccountConfirmationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

// class OnHistoryPage extends PageState {
//   // final ModelMenu modelMenu;

//   // const OnHistoryPage(this.modelMenu);
//   @override
//   List<Object> get props => [];
// }

// class OnReportsPage extends PageState {
//   @override
//   List<Object> get props => [];
// }

// class OnSettingsPage extends PageState {
//   @override
//   List<Object> get props => [];
// }

// class OnInventoryPage extends PageState {
//   @override
//   List<Object> get props => [];
// }

// class OnTableMapsPage extends PageState {
//   @override
//   List<Object> get props => [];
// }

class OnHalamanMenu extends PageState {
  final BaruModelMenu baruModelMenu;

  const OnHalamanMenu(this.baruModelMenu);
  @override
  List<Object> get props => [];
}
