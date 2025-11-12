import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/features/setup/cubit/setup_cubit/setup_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetupCubit extends Cubit<SetupStates> {
  SetupCubit() : super(SetupInitialState());

  static SetupCubit get(BuildContext context) => BlocProvider.of(context);

  activateDevice(BuildContext context) {
    context.pushNamed(AppRoutesNames.checkDeviceScreen);
    emit(ActivateDeviceSuccessState());
  }
}
