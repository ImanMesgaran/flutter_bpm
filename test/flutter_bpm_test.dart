import 'package:flutter_test/flutter_test.dart';
import 'package:heart_bpm/flutter_bpm.dart';
import 'package:heart_bpm/flutter_bpm_method_channel.dart';
import 'package:heart_bpm/flutter_bpm_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBpmPlatform
    with MockPlatformInterfaceMixin
    implements FlutterBpmPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBpmPlatform initialPlatform = FlutterBpmPlatform.instance;

  test('$MethodChannelFlutterBpm is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBpm>());
  });

  test('getPlatformVersion', () async {
    FlutterBpm flutterBpmPlugin = FlutterBpm();
    MockFlutterBpmPlatform fakePlatform = MockFlutterBpmPlatform();
    FlutterBpmPlatform.instance = fakePlatform;

    expect(await flutterBpmPlugin.getPlatformVersion(), '42');
  });
}
