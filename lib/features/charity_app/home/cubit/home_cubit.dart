import 'package:donation_app/features/charity_app/home/cubit/home_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);

  List<String> categoriesName = ["صدقة", "زكاة", "الايتام", "كفارة"];
  List<String> categoriesIcons = [
    Assets.iconsSadakaIcon,
    Assets.iconsZakahIcon,
    Assets.iconsOrphanIcon,
    Assets.iconsKafarahIcon,
  ];

  int selectedIndex = 0;

  void changeSelectedIndex(int index) {
    selectedIndex = index;
    emit(ChangeSelectedCategoryState());
  }

  final List<String> sliderItems = [
    "أكفل يتيم ووفر له الرعاية \nالصحية والاجتماعية والصحية.",
    "أكفل يتيم ووفر له الرعاية \nالصحية والاجتماعية والصحية.",
    "أكفل يتيم ووفر له الرعاية \nالصحية والاجتماعية والصحية.",
  ];
}
