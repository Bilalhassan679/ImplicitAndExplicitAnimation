import 'package:flutter/material.dart';


class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({Key? key}) : super(key: key);

  @override
  _ExplicitAnimationState createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation> with SingleTickerProviderStateMixin{
   late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 1),vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _animate(){
    print(_controller.value.toString());
    _controller.isAnimating?_controller.stop():_controller.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Explicit Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(turns: _controller,child:FlutterLogo(size: 100,) ,)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.animation),
        onPressed: ()=>_animate(),
        tooltip: 'to do Animate',
      ),
    );
  }
}
