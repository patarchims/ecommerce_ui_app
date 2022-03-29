import 'package:equatable/equatable.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';

class SliderModel extends Equatable {
  final String image;

  const SliderModel({
    required this.image,
  });

  @override
  List<Object?> get props => [image];
}

List<SliderModel> sliderItem = [
  SliderModel(
    image: AppConstant.sliderImage,
  ),
  SliderModel(
    image: AppConstant.sliderImage,
  ),
  SliderModel(
    image: AppConstant.sliderImage,
  ),
];
