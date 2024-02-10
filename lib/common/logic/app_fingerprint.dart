import 'package:package_info_plus/package_info_plus.dart';

class AppFingerprint {
  late PackageInfo packageInfo;
  AppFingerprint();

  Future<String> getAppUserAgent() async {
    packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    String package = packageInfo.packageName;
    return "$package/$version+$buildNumber";
  }

  Future<String> getAppBuildVersion() async {
    packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    return "$version+$buildNumber";
  }
}
