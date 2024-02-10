import 'package:flutter_gql/common/logic/app_fingerprint.dart';
import 'package:flutter_gql/screens/home/home.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  var runningVersion = "".obs;

  setVersion(String version) {
    runningVersion.value = version;
  }

  @override
  void onReady() async {
    // Get called after widget is rendered on the screen
    super.onReady();
    String ua = await AppFingerprint().getAppBuildVersion();
    setVersion("${ua}");

    await Future.delayed(Duration(seconds: 2));
    Get.offAll(HomePage());
  }
}
