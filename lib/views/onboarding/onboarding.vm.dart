import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friday/providers/providers.dart';
import 'package:friday/services/respository.dart';
import 'package:hooks_riverpod/all.dart';
part 'onboarding.vm.freezed.dart';

@freezed
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.onBoarded() = _OnBoarded;
  const factory OnBoardingState.notOnboarded() = _NotOnBoarded;
}

class OnBoardingVM extends StateNotifier<OnBoardingState> {
  OnBoardingVM(ProviderReference ref)
      : repo = ref.read(appRepositoryProvider),
        super(OnBoardingState.notOnboarded()) {
    checkOnBoardStatus();
  }

  AppRepository repo;

  Future<void> checkOnBoardStatus() async {
    final res = await repo.isOnBoarded();
    if (res) {
      state = OnBoardingState.onBoarded();
    } else {
      state = OnBoardingState.notOnboarded();
    }
  }

  Future<void> setOnBoard() async {
    final res = await repo.onBoard();
    if (res) {
      state = OnBoardingState.onBoarded();
    } else {
      state = OnBoardingState.notOnboarded();
    }
  }
}
