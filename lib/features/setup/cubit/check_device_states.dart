sealed class CheckDeviceStates {}

final class CheckDeviceInitialState extends CheckDeviceStates {}

final class AuthorizedDeviceState extends CheckDeviceStates {}

final class CheckDeviceSuccessState extends CheckDeviceStates {}
