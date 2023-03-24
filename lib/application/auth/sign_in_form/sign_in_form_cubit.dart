import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_state.dart';
part 'sign_in_form_cubit.freezed.dart';

class SignInFormCubit extends Cubit<SignInFormState> {
  SignInFormCubit() : super(SignInFormState.initial());

  Future<void> setEmail({required String email}) async {
    emit(state.copyWith(email: email));
  }

  Future<void> setPassword({required String password}) async {
    emit(state.copyWith(password: password));
  }
}
