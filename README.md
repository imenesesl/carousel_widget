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
Carousel(
      listViews: <Fragment>[
        Fragment(
          color: Colors.white,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars3.githubusercontent.com/u/33881595?s=460&v=4',
            ),
          ),
        ),
        Fragment(
          color: Colors.white,
          child: ListView(
              children: <Widget>[...],
            ),
        ),
      ],
    )

```