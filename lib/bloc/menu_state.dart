part of 'menu_bloc.dart';

class MenuState extends Equatable {
  final List<BaruModelMenu> baruModelMenusList;

  const MenuState(this.baruModelMenusList);

  @override
  List<Object> get props => [baruModelMenusList];
}
