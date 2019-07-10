import 'package:flutter/material.dart';
import 'package:txapita/states/app_state.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';
void main(){
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppState>.value(
        value: AppState(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Txapita',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Txapita'),
    );
  }
}

