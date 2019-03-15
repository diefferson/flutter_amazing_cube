import 'package:flutter/material.dart';

class ClipCube extends CustomClipper<Path>{

  final Direction direction;
  final double height;

  ClipCube({@required this.direction, @required this.height});

  @override
  Path getClip(Size size) {

    switch(direction){
      case Direction.TOP:
        return Path()
          ..lineTo(0.0, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0.0)
          ..close();
        break;
      case Direction.BOTTOM:
        return Path()
          ..moveTo(0.0, height)
          ..lineTo(0.0, size.height-height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0.0)
          ..close();
        break;
      case Direction.LEFT:
        return Path()
          ..moveTo(0.0, height)
          ..lineTo(0.0, size.height-height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0.0)
          ..close();
        break;
      case Direction.RIGHT:
        return Path()
          ..lineTo(0.0, 0.0)
          ..lineTo(0.0, size.height)
          ..lineTo(size.width, size.height-height)
          ..lineTo(size.width, 0.0+height)
          ..close();
        break;
    }
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper!= this;
  }

}

enum Direction{
    TOP,BOTTOM, LEFT,RIGHT
}