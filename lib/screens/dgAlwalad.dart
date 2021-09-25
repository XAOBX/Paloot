import 'package:flutter/material.dart';
import 'dart:math';

class DgAlwallad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List logo = ['heart', 'club', 'spade', 'diamond'];
    List shuffle(List items) {
      var random = new Random();

      // Go through all elements.
      for (var i = items.length - 1; i > 0; i--) {
        // Pick a pseudorandom number according to the list length
        var n = random.nextInt(i + 1);

        var temp = items[i];
        items[i] = items[n];
        items[n] = temp;
      }

      return items;
    }

    shuffle(logo);
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
            Image.asset('${logo[0]}.png'),
            SizedBox(),
            Image.asset('${logo[1]}.png'),
            SizedBox(),
            Image.asset('${logo[2]}.png'),
            SizedBox(),
            Image.asset('${logo[3]}.png'),
            SizedBox(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(''))
          ],
        ),
      ),
    );
  }
}
