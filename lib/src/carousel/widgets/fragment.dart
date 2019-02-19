import 'package:flutter/material.dart';

class Fragment extends StatelessWidget {
  final Color color;
  final Widget child;
  Fragment({
    this.color,
    @required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height),
      width: MediaQuery.of(context).size.width,
      color: color,
      child: Center(
        child: child,
      ),
    );
  }
}
