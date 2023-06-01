import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:portfolio/utils/web_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: AppColors.footer,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.06),
      child: Align(
        child: Column(
          children: [
            SizedBox(
              height: size.width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Mobile: ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "+917030356059",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Email: ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "jay.isampelliwar52@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Location: ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.pin_drop_rounded,
                  color: Colors.white,
                ),
                Text(
                  " INDIA, MAHARASHTRA 442401,",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              indent: size.width * 0.3,
              endIndent: size.width * 0.3,
              color: HexColor("#464646"),
            ),
            SizedBox(
              height: size.width * 0.01,
            ),
            const Text(
              "© 2023 - Template developed by Jay Isampelliwar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
