import 'package:flutter/material.dart';
import 'package:portfolio/utils/web_colors.dart';

import '../containers/container1.dart';
import '../containers/container2.dart';
import '../containers/container4.dart';
import '../containers/footer.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Container1(),
            Container2(),
            Container4(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
