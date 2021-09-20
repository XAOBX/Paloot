import 'package:flutter/material.dart';
import 'package:paloot/main.dart';
import 'package:provider/provider.dart';
import 'screens/main-screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "pppppppp",
        ),
        actions: [
          Center(
            child: Icon(
              Provider.of<ProvClass>(context).switchValue
                  ? Icons.dark_mode
                  : Icons.light_mode,
              color: Provider.of<ProvClass>(context).switchValue
                  ? Colors.blueGrey.shade800
                  : Colors.orange,
            ),
          ),
          Switch(
            value: Provider.of<ProvClass>(context).switchValue,
            onChanged: (newValue) {
              Provider.of<ProvClass>(context, listen: false)
                  .changeTheme(newValue);
            },
            activeColor: Colors.blueGrey,
            activeTrackColor: Colors.blueGrey.shade200,
            inactiveThumbColor: Colors.orange,
            inactiveTrackColor: Colors.yellow[400],
          ),
          PopupMenuButton(
            icon: Icon(Icons.menu), //don't specify icon if you want 3 dot menu
            color: Colors.blue,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "Setting",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            onSelected: (item) => {print(item)},
          ),
          //TODO menu
        ],
      ),
      body: MainScreen(),
    );
  }
}
