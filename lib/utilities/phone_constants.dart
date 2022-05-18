import 'dart:ui';

import 'package:golden_toolkit/golden_toolkit.dart';

class PhoneConstants {
  PhoneConstants._();

  /// Normal phone size - 414, 896
  static const Size normalPhoneSize = Size(414, 896);

  /// Small phone size - 375, 667
  static const Size smallPhoneSize = Size(375, 667);

  /// Test devices for golden testing
  static const List<Device> testDevices = [
    Device(
      name: 'Normal phone - text scale 1.0',
      size: PhoneConstants.normalPhoneSize,
    ),
    Device(
      name: 'Normal phone - text scale 1.1',
      size: PhoneConstants.normalPhoneSize,
      textScale: 1.1,
    ),
    Device(
      name: 'Normal phone - text scale 1.2',
      size: PhoneConstants.normalPhoneSize,
      textScale: 1.2,
    ),
    Device(
      name: 'Small phone - text scale 1.0',
      size: PhoneConstants.smallPhoneSize,
    ),
    Device(
      name: 'Small phone - text scale 1.1',
      size: PhoneConstants.smallPhoneSize,
      textScale: 1.1,
    ),
    Device(
      name: 'Small phone - text scale 1.2',
      size: PhoneConstants.smallPhoneSize,
      textScale: 1.2,
    ),
  ];

  static DeviceBuilder get deviceBuilder {
    return DeviceBuilder()
      ..overrideDevicesForAllScenarios(
        devices: PhoneConstants.testDevices,
      );
  }
}
