import 'package:donation_app/features/charity_app/project_details/cubit/project_details_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDetailsCubit extends Cubit<ProjectDetailsStates> {
  ProjectDetailsCubit() : super(ProjectDetailsInitialState());

  static ProjectDetailsCubit get(BuildContext context) =>
      BlocProvider.of(context);

  final List<String> sliderImages = [
    Assets.imagesCharityOnboardImage,
    Assets.imagesCharityOnboardImage,
    Assets.imagesCharityOnboardImage,
  ];

  double? selectedAmount;
  bool isSelectedAmount = false;
  final List<double> amounts = [300, 200, 100, 50];
  changeSelectedDonationAmount(double amount) {
    if (selectedAmount == amount) {
      selectedAmount = null;
      isSelectedAmount = false;
    } else {
      selectedAmount = amount;
      isSelectedAmount = true;
    }

    print("selectedAmount: $selectedAmount");
    emit(ChangeSelectedDonationAmountState());
  }

  final formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

}
