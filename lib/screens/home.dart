import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/desktop.dart';
import 'package:portfolio/screens/mobile.dart';

import '../utils/app_const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    AppConst.width = MediaQuery.of(context).size.width;
    AppConst.height = MediaQuery.of(context).size.height;
    return const Responsive(
      desktop: Desktop(),
      mobile: MobileScreen(),
    );
  }
}
