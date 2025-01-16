import 'package:bloc/bloc.dart';

class ExpensesActiveItemCubit extends Cubit<int> {
  ExpensesActiveItemCubit() : super(0);

  void setActiveValue(int value) {
    emit(value);
  }
}
