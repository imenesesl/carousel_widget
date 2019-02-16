# carousel_widget

A library for the use of the Carousel Widget through a list of Fragments

## Getting Started

Use the Carousel and the Fragment to implement any type of Widget

```
Carousel(
      listViews: <Fragment>[
        Fragment(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars3.githubusercontent.com/u/33881595?s=460&v=4',
            ),
            radius: 120.0,
          ),
          color: Colors.white,
        ),
        Fragment(
          child: Center(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://avatars3.githubusercontent.com/u/33881595?s=460&v=4',
                    ),
                  ),
                  title: Text('Luis Meneses'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                    ),
                  ),
                  title: Text('Flutter'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/993555605078994945/Yr-pWI4G_400x400.jpg',
                    ),
                  ),
                  title: Text('Dart'),
                ),
              ],
            ),
          ),
          color: Colors.white,
        ),
      ],
    )

```
# carousel_widget
