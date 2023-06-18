import '../../common/enum.dart';
import '../../domain/model/model.dart';
import '../base/base_view_model.dart';
import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel {
  late final List<SliderObject> _list = _getSliderData();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  int get numberOfSlides => _list.length;

  SliderObject get currentSlider {
    return _list[_currentIndex];
  }

  void setCurrentIndex(int index) {
    if (index < 0) {
      index = _list.length - 1;
    } else if (index >= _list.length) {
      index = 0;
    }
    _currentIndex = index;
  }

  int goNext() {
    setCurrentIndex(_currentIndex + 1);
    setState(ViewState.idle);
    return _currentIndex;
  }

  int goPrevious() {
    setCurrentIndex(_currentIndex - 1);
    setState(ViewState.idle);
    return _currentIndex;
  }

  void onPageChanged(int index) {
    if (_currentIndex != index) {
      setCurrentIndex(index);
      setState(ViewState.idle);
    }
  }

  // private functions
  List<SliderObject> _getSliderData() => [
        SliderObject(
            title: AppString.onBoardingTitle1,
            subTitle: AppString.onBoardingSubTitle1,
            image: ImageAssets.onboardingLogo1),
        SliderObject(
            title: AppString.onBoardingTitle2,
            subTitle: AppString.onBoardingSubTitle2,
            image: ImageAssets.onboardingLogo2),
        SliderObject(
            title: AppString.onBoardingTitle3,
            subTitle: AppString.onBoardingSubTitle3,
            image: ImageAssets.onboardingLogo3),
        SliderObject(
            title: AppString.onBoardingTitle4,
            subTitle: AppString.onBoardingSubTitle4,
            image: ImageAssets.onboardingLogo4)
      ];
}
