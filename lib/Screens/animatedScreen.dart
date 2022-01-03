import 'package:animatedcartooon/Screens/explicitAnimation.dart';
import 'package:flutter/material.dart';
class AnimatedScreen extends StatefulWidget {
  AnimatedScreen({Key? key}) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  bool large=false;
  int pad=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedScreen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(duration: Duration(seconds: 1),
              height: large?300:100,
              curve: Curves.easeInExpo,
              child: Image.network('https://wallpaperaccess.com/full/1281908.png'),
            ),
            AnimatedOpacity(duration: Duration(seconds: 1),
              opacity: large?1:0,
              curve: Curves.slowMiddle,
              child: Image.network('https://wallpaperaccess.com/full/1281908.png',height: 100,),
            ),

            ElevatedButton(onPressed: ()=>setState((){
              large=!large;
            }), child: Text('large')),
            ElevatedButton(onPressed: ()=>

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExplicitAnimation()),
            ), child: Text("Go To Explicit Animation"))
          ],
        ),
      ),
    );
  }
}
