# carousel_widget

A library for the use of the Carousel Widget through a list of Fragments

## Getting Started

Implements package in your pubspec.yaml

```
dependencies:
  flutter:
    sdk: flutter
  carousel_widget: 
```

Use the Carousel and the Fragment to implement any type of Widget

```
class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Carousel(
        listViews: [
          Fragment(
            child: ListView.builder(
              itemCount: 24,
              itemBuilder: ((context, index) => ListTile(
                    title: Text('index $index'),
                  )),
            ),
          ),
          Fragment(
            child: CircleAvatar(
              radius: 56,
              backgroundColor: Colors.orange,
              child: Text(
                'LM',
                style: TextStyle(fontSize: 48),
              ),
            ),
          )
        ],
      ),
    );
  }
}

```
