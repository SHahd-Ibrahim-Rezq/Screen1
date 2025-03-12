import 'package:flutter/material.dart';

class text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Image.asset('lib/images/bashamel1.jpg'),
                SizedBox(height: 20),
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: 15),
                Text(
                  'Egyptian macarona bechamel (مكرونة بشاميل,) is a comfort food recipe popular in Egypt made from penne pasta and a minced meat sauce baked with creamy béchamel. It features layers of penne pasta and a savory minced meat sauce, all enveloped in a creamy béchamel, then baked to golden perfection. A rich and satisfying dish perfect for family meals.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 15),
                Text(
                  'Instructions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'lib/images/step1.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'lib/images/step2.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'lib/images/step3.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'lib/images/step4.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/images/step5.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'lib/images/step6.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'lib/images/bashamel6.jpg',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'lib/images/bashamel2.jpg',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
