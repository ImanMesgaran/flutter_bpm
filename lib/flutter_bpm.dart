
import 'flutter_bpm_platform_interface.dart';

class FlutterBpm {
  Future<String?> getPlatformVersion() {
    return FlutterBpmPlatform.instance.getPlatformVersion();
  }
}
