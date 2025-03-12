import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SafeArea(child: Scaffold(body: HomeScreen(),)),);
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Image.asset('lib/images/bashamel1.jpg'),
          _buildTitle('About'),
          _buildDescribtion('Egyptian macarona bechamel (مكرونة بشاميل,) is a comfort food recipe popular in Egypt made from penne pasta and a minced meat sauce baked with creamy béchamel. It features layers of penne pasta and a savory minced meat sauce, all enveloped in a creamy béchamel, then baked to golden perfection. A rich and satisfying dish perfect for family meals.'),
          _buildTitle('Instructions'),
          _buildImageRow(['lib/images/step1.png',
              'lib/images/step2.png',
              'lib/images/step3.png',
              'lib/images/step4.png',]),
              _buildImageRow(['lib/images/step5.png',
              'lib/images/step6.png',
              'lib/images/bashamel6.jpg',
              'lib/images/bashamel2.jpg'])
        ]
      ),
    );
  }
 
Widget _buildImageRow(List<String> imagePaths) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(imagePaths.length, (index) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(imagePaths[index], width: 90, height: 90),
      )),
    ),
  );
}
Widget _buildTitle(String text){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
  );
}
Widget _buildDescribtion(String text){
  return Text(text,style: TextStyle(fontSize: 18),);
}
}