import 'package:flutter/material.dart';
import 'package:paloot/main.dart';
import 'package:paloot/screens/dgAlwalad.dart';
import 'package:provider/provider.dart';
import 'package:paloot/models/text-score.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<ProvClass>(context).switchValue
          ? Colors.black
          : Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'لنا',
                  textAlign: TextAlign.center,
                ),
                Icon(
                  Icons.expand_more,
                  size: 30,
                ),
                // TODO Image arrow
                Text(
                  'لهم',
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(child: Text('99')),
                SizedBox(),
                Container(child: Text('10')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: TextScore(),
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Text('تسجيل'),
                ),
                Container(
                  width: 80,
                  height: 80,
                  child: TextScore(),
                ),
              ],
            ),
            Expanded(
              //flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Provider.of<ProvClass>(context).switchValue
                      ? Colors.grey.shade900
                      : Colors.white,
                ),
                child: Row(
                  children: [],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'صكه جديدة',
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 20),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('تراجع'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 20),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
