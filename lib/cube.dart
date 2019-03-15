
import 'package:flutter/material.dart';
import 'package:flutter_amazing_cube/ClipCube.dart';

class CubeWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CubeWidgetState();
}

class CubeWidgetState extends State<CubeWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child:Stack(
          alignment: Alignment.center,
            children: <Widget>[
                Container(color: Colors.green, width: 200, height: 200),
                Transform.translate(
                    offset: Offset(0, -200),
                    child:ClipPath(
                    clipper: ClipCube(direction:Direction.TOP, height:20.0),
                    child:Container(color: Colors.blue, width: 200, height: 200)
                )),
//                Transform.translate(
//                    offset: Offset(0, 200),
//                    child:Container(color: Colors.red, width: 200, height: 200)
//                ),
            ],
        )

    );
  }
}