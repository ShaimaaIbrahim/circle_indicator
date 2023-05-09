import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'circle_indicator_platform_interface.dart';

/// An implementation of [CircleIndicatorPlatform] that uses method channels.
class MethodChannelCircleIndicator extends CircleIndicatorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('circle_indicator');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
