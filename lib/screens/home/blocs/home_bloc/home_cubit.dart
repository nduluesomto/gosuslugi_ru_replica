import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> onLoadData() async {
    emit(HomeLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(HomeLoaded());
  }
}
