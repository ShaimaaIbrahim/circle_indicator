
import 'circle_indicator_platform_interface.dart';

class CircleIndicator {
  Future<String?> getPlatformVersion() {
    return CircleIndicatorPlatform.instance.getPlatformVersion();
  }
}
