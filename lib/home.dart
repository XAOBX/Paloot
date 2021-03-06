import 'package:flutter/material.dart';
import 'package:paloot/main.dart';
import 'package:provider/provider.dart';
import 'screens/main-screen.dart';
import 'screens/dgAlwalad.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "حاسبة بلوت",
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
            //icon: Icon(Icons), //don't specify icon if you want 3 dot menu
            //color: Colors.blue,
            itemBuilder: (context) => [
              PopupMenuItem<int>(

                  //value: 0,
                  child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DgAlwallad()));
                      },
                      child: Text('دق الولد')),
                  ElevatedButton(onPressed: null, child: Text('sail')),
                ],
              )),
            ],
            onSelected: (item) => {print(item)},
          ),
        ],
      ),
      body: MainScreen(),
    );
  }
}
