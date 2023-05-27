import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio/utils/web_colors.dart';
import 'package:portfolio/widgets/project_container_widget.dart';

import '../utils/text_styles.dart';

class Container4 extends StatelessWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.06),
      child: Column(children: [
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          "PROJECTS",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectContainer(
                  description:
                      "Developed a mobile application using Flutter for the frontend and \nNode.js with Express.js and Socket.IO for the backend. \nEnabled real-time communication by allowing users to join the chat by \nentering their name on the lobby page.",
                  title: "Real-Time Chatting Application",
                  onTap: () {
                    html.window.open(
                        "https://github.com/jay-isampelliwar/flutter_chat_app",
                        "_blank");
                  },
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectContainer(
                  description:
                      "I developed a full-stack todo application using Flutter and the BLoC pattern \nthat includes features such as JWT authentication, email OTP verification,\nand the ability to add and delete todo items. This project showcases my\nproficiency in mobile app development using Flutter and my ability to\nimplement best practices such as separation of concerns and state\nmanagement using the BLoC pattern.",
                  title: "TODO",
                  onTap: () {
                    html.window.open(
                        "https://github.com/jay-isampelliwar/todo_app",
                        "_blank");
                  },
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectContainer(
                  onTap: () {
                    html.window.open(
                        "https://github.com/jay-isampelliwar/Weather_App",
                        "_blank");
                  },
                  description:
                      "Everyone finds the weather forecast app to be very helpful. Knowing the\nweather information can help you carefully plan. I used the\nOpenweathermap API to obtain the data for this application. And we are\nextracting data from it using the http get method, transforming it into the\nDart Model class, and rendering it on the UI. To organize and manage the\ncode, I used the Provider state management library.",
                  title: "Weather forecast",
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
