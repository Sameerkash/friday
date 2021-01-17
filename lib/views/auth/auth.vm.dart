import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friday/models/common/user.response.dart';
import 'package:friday/providers/providers.dart';
import 'package:friday/services/respository.dart';
import 'package:hooks_riverpod/all.dart';

part 'auth.vm.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated({LoginUserResponse user}) =
      _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}

class AuthVM extends StateNotifier<AuthState> {
  AppRepository repo;
  AuthVM(ProviderReference ref)
      : repo = ref.read(appRepositoryProvider),
        super(AuthState.loading()) {
    checkUserAuth();
  }

  Map<String, dynamic> signUpForm = {};
  Future<bool> signUp() async {
    final res = await repo.signUp(signUpForm);
    return true;
  }

  Future<void> checkUserAuth() async {
    final res = await repo.getLoggedInUser();
    if (res != null)
      state = AuthState.authenticated();
    else
      state = AuthState.unAuthenticated();
  }

  Future<bool> signIn(Map<String, dynamic> form) async {
    final res = await repo.login(form);
    if (res != null) {
      state = AuthState.authenticated(user: res);
      return true;
    }
    return false;
  }

  void addSignUpValues(String name, String email, String password) {
    signUpForm = {
      "name": name,
      "email": email,
      "password": password,
    };
  }

  void addphone(String phone) {
    signUpForm = {
      ...signUpForm,
      "phone": phone,
    };
  }
}
