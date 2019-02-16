import 'package:carousel_widget/fragment.dart';
import 'package:carousel_widget/widgets/carousel/carousel_controller.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<Fragment> listViews;
  Carousel({
    @required this.listViews,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: CarouselController(
        listViews: listViews,
      ),
    );
  }
}
