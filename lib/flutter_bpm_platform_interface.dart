import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_bpm_method_channel.dart';

abstract class FlutterBpmPlatform extends PlatformInterface {
  /// Constructs a FlutterBpmPlatform.
  FlutterBpmPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBpmPlatform _instance = MethodChannelFlutterBpm();

  /// The default instance of [FlutterBpmPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBpm].
  static FlutterBpmPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBpmPlatform] when
  /// they register themselves.
  static set instance(FlutterBpmPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
