import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:donation_app/features/donate_now/presentation/donate_now.dart';
import 'package:donation_app/features/home/presentation/screens/home_screen.dart';
import 'package:donation_app/features/layout/cubit/layout_states.dart';
import 'package:donation_app/features/layout/presentation/widgets/cart_icon.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../core/widgets/custom_circle_avatar.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(BuildContext context) => BlocProvider.of(context);

  late PersistentTabController controller = PersistentTabController(
    initialIndex: 0,
  );

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: CustomSvgIcon(assetName: Assets.iconsHomeIcon),
        icon: CustomSvgIcon(assetName: Assets.iconsSelectedHomeIcon),
        title: ("الرئيسية"),
        activeColorPrimary: AppColors.primaryColorForCharities,
        inactiveColorPrimary: AppColors.grey,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: CustomSvgIcon(assetName: Assets.iconsDonateNowIcon),
        icon: CustomSvgIcon(assetName: Assets.iconsSelectedDonateNowIson),
        title: ("تبرع الان"),
        activeColorPrimary: AppColors.primaryColorForCharities,
        inactiveColorPrimary: AppColors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: CartIcon(),
        title: ("السلة"),
        activeColorPrimary: AppColors.primaryColorForCharities,
        inactiveColorPrimary: AppColors.grey,
      ),
    ];
  }

  List<Widget> screens = [
    ///======= Home =======//
    HomeScreen(),

    ///======= Cart =======///
    CartScreen(),

    ///======= Donate now =======///
    DonateNow(),
  ];

  int selectedIndex = 0;
  selectItem(int index, BuildContext context) {
    if (selectedIndex != index) {
      selectedIndex = index;
      emit(TapChangedState());
    }
  }
}
