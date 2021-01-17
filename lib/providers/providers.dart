import 'package:friday/services/respository.dart';
import 'package:friday/views/auth/auth.vm.dart';
import 'package:friday/views/onboarding/onboarding.vm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../views/auth/auth.vm.dart';

/// Repository provider to access repoistory methods.
final appRepositoryProvider = Provider<AppRepository>((ref) => AppRepository());

final onBoardProvider =  StateNotifierProvider<OnBoardingVM>((ref) => OnBoardingVM(ref));

/// Auth provider to acess authentication state.
final authProvider = StateNotifierProvider<AuthVM>((ref) => AuthVM(ref));