// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

class UniversalPlatformDetected extends StatelessWidget {
  const UniversalPlatformDetected({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Univeral Platform Detected'),
      ),
      child: Center(
        child: Text(
          "Web: ${UniversalPlatform.isWeb} \n "
          "MacOS: ${UniversalPlatform.isMacOS} \n"
          "Windows: ${UniversalPlatform.isWindows} \n"
          "Linux: ${UniversalPlatform.isLinux} \n"
          "Android: ${UniversalPlatform.isAndroid} \n"
          "IOS: ${UniversalPlatform.isIOS} \n"
          "Fuschia: ${UniversalPlatform.isFuchsia} \n",
        ),
      ),
    );
  }
}
