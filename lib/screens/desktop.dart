import 'package:flutter/material.dart';
import 'package:portfolio/containers/container4.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Container1(),
            // Container2(),
            Container4(),
            // Footer(),
          ],
        ),
      ),
    );
  }
}
