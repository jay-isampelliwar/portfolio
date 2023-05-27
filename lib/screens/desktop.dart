import 'package:flutter/material.dart';

import '../containers/container1.dart';
import '../containers/container2.dart';
import '../containers/container3.dart';
import '../containers/footer.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Container1(),
            Container2(),
            Container3(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
