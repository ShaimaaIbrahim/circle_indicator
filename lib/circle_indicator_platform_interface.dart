import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'circle_indicator_method_channel.dart';

abstract class CircleIndicatorPlatform extends PlatformInterface {
  /// Constructs a CircleIndicatorPlatform.
  CircleIndicatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static CircleIndicatorPlatform _instance = MethodChannelCircleIndicator();

  /// The default instance of [CircleIndicatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelCircleIndicator].
  static CircleIndicatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CircleIndicatorPlatform] when
  /// they register themselves.
  static set instance(CircleIndicatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
