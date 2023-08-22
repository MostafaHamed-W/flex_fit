import 'package:flex_fit/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FlexFit());
}

class FlexFit extends StatelessWidget {
  const FlexFit({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FlexFit',
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.white,
        textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: const Duration(milliseconds: 300),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
