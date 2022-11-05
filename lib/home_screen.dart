import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume_app/themes/themes.dart';
import 'package:get/get.dart';
import 'components/components.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.backgroundColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              ThemeServices().toggleTheme();
            });
          },
          child: Icon(
            Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
            size: 25,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: OrientationBuilder(builder: (context, orientation) {
            if(orientation == Orientation.landscape || size.width > 700) {
              return const LandScapeMode();
            } else {
              return const PortraitMode();
            }
          })
        ),
        ),
      );
  }
}

