import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_bpm_platform_interface.dart';

/// An implementation of [FlutterBpmPlatform] that uses method channels.
class MethodChannelFlutterBpm extends FlutterBpmPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_bpm');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
