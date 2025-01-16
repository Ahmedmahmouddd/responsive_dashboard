import 'package:bloc/bloc.dart';

class ExpensesDropdownMenuCubit extends Cubit<String> {
  ExpensesDropdownMenuCubit() : super("Daily");

  void setActiveValue(String value) {
    emit(value);
  }
}
