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
      padding: EdgeInsets.symmetric(vertical: size.width * 0.04),
      child: Column(children: [
        Text(
          "PROJECTS",
          style: AppTextStyles.h4(
            size: size,
            bold: true,
          ),
        ),
        SizedBox(
          height: size.width * 0.04,
        ),
        Column(
          children: [
            ProjectContainer(
              description:
                  "Developed a mobile application using Flutter for the frontend and Node.js with Express.js and Socket.IO for the backend. Enabled real-time communication by allowing users to join the chat byentering their name on the lobby page.",
              title: "Real-Time Chatting Application",
              image: "assets/images/chat.png",
              techStack: const [
                "Flutter",
                "NodeJS",
                "ExpressJS",
                "SocketIO",
                "JavaScript",
                "Dart"
              ],
              onTap: () {
                html.window.open(
                    "https://github.com/jay-isampelliwar/flutter_chat_app",
                    "_blank");
              },
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            ProjectContainer(
              description:
                  "I developed a full-stack todo application using Flutter and the BLoC pattern that includes features such as JWT authentication, email OTP verification, and the ability to add and delete todo items. This project showcases my proficiency in mobile app development using Flutter and my ability to implement best practices such as separation of concerns and state management using the BLoC pattern.",
              title: "TODO",
              image: "assets/images/todo.png",
              techStack: const [
                "Flutter",
                "NodeJS",
                "ExpressJS",
                "MongoDB",
                "JavaScript",
                "Dart"
              ],
              onTap: () {
                html.window.open(
                    "https://github.com/jay-isampelliwar/todo_app", "_blank");
              },
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            ProjectContainer(
              onTap: () {
                html.window.open(
                    "https://github.com/jay-isampelliwar/Weather_App",
                    "_blank");
              },
              techStack: const ["Flutter", "RestAPI", "Dart"],
              image: "assets/images/weather.png",
              description:
                  '''Everyone finds the weather forecast app to be very helpful. Knowing theweather information can help you carefully plan. I used theOpenweathermap API to obtain the data for this application. And we areextracting data from it using the http get method, transforming it into theDart Model class, and rendering it on the UI. To organize and manage thecode, I used the Provider state management library.''',
              title: "Weather forecast",
            ),
          ],
        )
      ]),
    );
  }
}
