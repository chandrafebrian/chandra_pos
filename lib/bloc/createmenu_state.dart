part of 'createmenu_bloc.dart';

class CreatemenuState extends Equatable {
  final List<ModelMenu> listmodelMenus;

  const CreatemenuState(this.listmodelMenus);

  @override
  List<Object> get props => [listmodelMenus];
}
