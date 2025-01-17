import 'package:adv_flutter_exam_1/provider/jokes_provider.dart';
import 'package:adv_flutter_exam_1/view/screen/favourit_screen.dart';
import 'package:adv_flutter_exam_1/view/screen/home_page.dart';
import 'package:adv_flutter_exam_1/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JokesProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :  (context)=> SplashScreen(),
          '/home' :  (context)=> HomePage(),
          '/fav' :  (context)=> FavouritScreen(),
        },
      ),
    );
  }
}
