import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   String _serialNumber = 'Unknown';

  @override
  void initState() {
    super.initState();
    _getDeviceSerialNumber();
  }

  Future<void> _getDeviceSerialNumber() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String serial = 'Unknown';

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        // Note: androidInfo.id often returns ANDROID_ID, which changes on factory reset.
        // For the true hardware serial number, specific device configurations or
        // system apps might be required due to Android's privacy restrictions.

        print("""
        serial number :: ${androidInfo.serialNumber},
        id            :: ${androidInfo.id},
        name          :: ${androidInfo.name},
        device        :: ${androidInfo.device},
        model         :: ${androidInfo.model},
        type          :: ${androidInfo.type},
        """);
        serial = androidInfo.id; // This is typically the ANDROID_ID
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        // iOS does not provide direct access to the device's hardware serial number.
        // identifierForVendor is a unique identifier per vendor, per device.
        serial = iosInfo.identifierForVendor ?? 'N/A';
      }
    } catch (e) {
      print('Error getting device info: $e');
    }

    setState(() {
      _serialNumber = serial;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Device Serial Number')),
      body: Center(child: Text('Device Identifier: $_serialNumber')),
    );
  }
}
