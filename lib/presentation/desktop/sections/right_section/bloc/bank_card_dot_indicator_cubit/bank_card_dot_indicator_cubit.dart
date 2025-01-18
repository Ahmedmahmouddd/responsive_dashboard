import 'package:bloc/bloc.dart';

class BankCardDotIndicatorCubit extends Cubit<int> {
  BankCardDotIndicatorCubit() : super(0);

  void setActiveValue(int value) {
    emit(value);
  }
}
