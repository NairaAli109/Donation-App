sealed class SetupStates {}

final class SetupInitialState extends SetupStates {}

final class ActivateDeviceLoadingState extends SetupStates {}

final class ActivateDeviceSuccessState extends SetupStates {}

final class ActivateDeviceErrorState extends SetupStates {}
