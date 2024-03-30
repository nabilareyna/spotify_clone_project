import 'package:flutter/material.dart';
import 'package:spotify_clone_project/modules/startPage/ui/start.dart';
import 'package:spotify_clone_project/routes/routes.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_project/utils/appThemes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Spotify Clone App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Style.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: Routes.getStartRoute(),
      getPages: Routes.routes,
      home: StartPage(),
    );
  }
}
