import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PointSelected extends StatelessWidget {
  final double _radius = 4.0, _margin = 8.0;
  final currentIndex;
  final int position;

  PointSelected({
    @required this.currentIndex,
    this.position = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: currentIndex == position ? _radius + 1.0 : _radius,
        backgroundColor: currentIndex == position
            ? CupertinoColors.inactiveGray
            : CupertinoColors.lightBackgroundGray,
      ),
      margin: EdgeInsets.only(
        left: _margin,
        right: _margin,
      ),
    );
  }
}
