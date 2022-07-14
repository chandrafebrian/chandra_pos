part of 'menu_bloc.dart';

class MenuState extends Equatable {
  final List<BaruModelMenu> baruModelMenuList;

  const MenuState(this.baruModelMenuList);

  @override
  List<Object> get props => [baruModelMenuList];
}
