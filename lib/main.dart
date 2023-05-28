import 'package:flutter/material.dart';
import 'package:portfolio/provider/container1.dart';
import 'package:portfolio/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Container1Provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Montserrat",
          primaryColor: Colors.greenAccent,
          brightness: Brightness.light,
        ),
        home: const Home(),
      ),
    );
  }
}
