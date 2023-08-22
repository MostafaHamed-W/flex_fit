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
    return const GetMaterialApp();
  }
}
