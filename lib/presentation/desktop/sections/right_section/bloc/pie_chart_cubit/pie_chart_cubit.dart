import 'package:bloc/bloc.dart';

class PieChartCubit extends Cubit<int> {
  PieChartCubit() : super(-1);

  void setActiveIndex(int index) {
    emit(index);
  }
}
