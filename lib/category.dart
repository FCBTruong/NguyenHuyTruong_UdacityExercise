import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _rowHeight = 200.0;
final _borderRadius = BorderRadius.circular(0);

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
}): assert(color != null),
  assert(color != null),
  assert(iconLocation != null),
  super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
        child: Container(
            height: _rowHeight,
            child: InkWell(
              borderRadius: _borderRadius,
              splashColor: Colors.white,
              highlightColor: Colors.blue,

              onTap: (){
                print('I was Tapped');
            },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),

                      child: Icon(
                        iconLocation,
                        size: 90.0,
                      ),
              ),
                      Center(
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                  ],
                ),
              ),
            )
        ),
    );
  }
}