import 'package:flutter_test/flutter_test.dart';
import 'package:circle_indicator/circle_indicator.dart';
import 'package:circle_indicator/circle_indicator_platform_interface.dart';
import 'package:circle_indicator/circle_indicator_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCircleIndicatorPlatform
    with MockPlatformInterfaceMixin
    implements CircleIndicatorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CircleIndicatorPlatform initialPlatform = CircleIndicatorPlatform.instance;

  test('$MethodChannelCircleIndicator is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCircleIndicator>());
  });

  test('getPlatformVersion', () async {
    CircleIndicator circleIndicatorPlugin = CircleIndicator();
    MockCircleIndicatorPlatform fakePlatform = MockCircleIndicatorPlatform();
    CircleIndicatorPlatform.instance = fakePlatform;

    expect(await circleIndicatorPlugin.getPlatformVersion(), '42');
  });
}
