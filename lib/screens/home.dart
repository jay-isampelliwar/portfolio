import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/desktop.dart';
import 'package:portfolio/screens/mobile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: Desktop(),
      mobile: MobileScreen(),
    );
  }
}
