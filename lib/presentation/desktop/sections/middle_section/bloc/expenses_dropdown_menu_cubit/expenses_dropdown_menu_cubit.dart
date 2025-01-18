import 'package:bloc/bloc.dart';

class DropdownMenuCubit extends Cubit<String> {
  DropdownMenuCubit() : super("Daily");

  void setActiveValue(String value) {
    emit(value);
  }
}
