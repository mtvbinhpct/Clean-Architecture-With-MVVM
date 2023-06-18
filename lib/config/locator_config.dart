import 'package:flutter_clean_architecture/presentation/onboarding/onboarding_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator..registerFactory<OnBoardingViewModel>(() => OnBoardingViewModel());
}
