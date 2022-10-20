// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class UniversalDesign extends StatelessWidget {
  const UniversalDesign({super.key});

  @override
  Widget build(BuildContext context) {

    //! Android
    if (UniversalPlatform.isAndroid) {
      debugPrint("Android");
      return materialWidget(context, 'Hi Android with Material!');
    }

    //! iOs
    else if (UniversalPlatform.isIOS) {
      debugPrint("isIOS");
      return cupertinoWidget(context, 'Hi iOS with Material!');
    }

    //! Web
    else if (UniversalPlatform.isWeb) {
      debugPrint("Web");
      return materialWidget(context, 'Hi Web!');
    }

    //! Desktop (Linux, Windows, Macintosh)
    //  isDesktop includeisWindows, isLinux and isMacOS
    else if (UniversalPlatform.isDesktop) {
      debugPrint("Desktop");
      return cupertinoWidget(context, 'Hi Computers!');
    }

    //! Fuchshia
    else if (UniversalPlatform.isFuchsia) {
      debugPrint("Fuchsia");
      return materialWidget(context, 'Hi Fuchsia!');
    }

    return Container();
  }

  //! MaterialWidget
  Widget materialWidget(BuildContext context, String message) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[150],
          appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(100.0), // here the desired height
            child: AppBar(
              centerTitle: true,
              toolbarHeight: 150,
              title: const Text("Material App's Demo"),
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Text(
              message,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false);
  }

  //! CupertinoWidget
  Widget cupertinoWidget(BuildContext context, String message) {
    return CupertinoApp(
        home: CupertinoPageScaffold(
          backgroundColor: Colors.grey,
          navigationBar: CupertinoNavigationBar(
            middle: Text(message),
          ),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                message,
                style: const TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false);
  }
}
