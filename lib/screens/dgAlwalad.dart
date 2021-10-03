import 'package:flutter/material.dart';

class DgAlwallad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List logo = ['heart', 'club', 'spade', 'diamond'];

    logo.shuffle();

    print(logo);

    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            Image(image: AssetImage('assets/images/${logo[0]}.png')),
            SizedBox(),
            Image(image: AssetImage('assets/images/${logo[1]}.png')),
            SizedBox(),
            Image(image: AssetImage('assets/images/${logo[2]}.png')),
            SizedBox(),
            Image(image: AssetImage('assets/images/${logo[3]}.png')),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('رجوع')),
                SizedBox(),
              ],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
