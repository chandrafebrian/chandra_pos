part of 'menu_bloc.dart';

class MenuState extends Equatable {
  final List<BaruModelMenu> baruModelMenus;

  const MenuState(this.baruModelMenus);

  @override
  List<Object> get props => [baruModelMenus];
}
