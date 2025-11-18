import 'package:donation_app/features/charity_onboard/cubit/charity_onboard_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharityOnboardCubit extends Cubit<CharityOnboardStates> {
  CharityOnboardCubit() : super(CharityOnBoardInitialState());

  static CharityOnboardCubit get(BuildContext context) =>
      BlocProvider.of(context);

  final List<String> sliderImages = [
    Assets.imagesCharityOnboardImage,
    Assets.imagesCharityOnboardImage,
    Assets.imagesCharityOnboardImage,
  ];
}
