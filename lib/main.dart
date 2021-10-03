import 'package:flutter/material.dart';
import 'package:paloot/home.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'models/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ProvClass(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProvClass>(
      builder: (context, prov, child) {
        return MaterialApp(
          theme: prov.switchValue
              ? ThemeChanger().darkTheme
              : ThemeChanger().lightTheme,
          home: Home(),
        );
      },
    );
  }
}

class ProvClass extends ChangeNotifier {
  bool switchValue = false;
  void changeTheme(bool value) {
    switchValue = value;
    notifyListeners();
  }
}
