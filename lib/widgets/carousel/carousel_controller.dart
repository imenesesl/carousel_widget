import 'package:carousel_widget/fragment.dart';
import 'package:carousel_widget/widgets/carousel/components/bar_point_selected.dart';
import 'package:carousel_widget/widgets/carousel/components/point_selected.dart';
import 'package:flutter/material.dart';

class CarouselController extends StatefulWidget {
  final List<Fragment> listViews;
  CarouselController({
    @required this.listViews,
  });
  @override
  State<StatefulWidget> createState() {
    return _CarouselController();
  }
}

class _CarouselController extends State<CarouselController> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: (MediaQuery.of(context).size.height / 12),
            ),
            child: PageView(
              onPageChanged: (index) => setState(() => _currentIndex = index),
              physics: BouncingScrollPhysics(),
              children: widget.listViews,
            ),
          ),
          BarPointSelected(
              currentIndex: _currentIndex,
              listViews: widget.listViews
                  .map<Widget>((pointer) => PointSelected(
                        currentIndex: _currentIndex,
                        position: widget.listViews.indexOf(pointer),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
