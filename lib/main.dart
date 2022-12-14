import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_resume_app/themes/themes.dart';
import 'home_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: Themes.lightMode,
      darkTheme: Themes.darkMode,
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}
