import 'package:NguyenHuyTruong_UdacityExercise/converter_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:NguyenHuyTruong_UdacityExercise/unit.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
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
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  }): assert(color != null),
  assert(color != null),
  assert(iconLocation != null),
  assert(units != null),
  super(key: key);

  // Navigates to the [ConverterRoute].
  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context){
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: ConverterRoute(
            color: color,
            units: units,
          ),

            // This prevents the attempt to resize the screen when the keyboard is opened
          resizeToAvoidBottomPadding: false,
        );
      }
    ));
  }

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
            splashColor: color,
            highlightColor: color,

            onTap: () {
              _navigateToConverter(context);
              print('I was Tapped');
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),

                    child: Icon(
                      iconLocation,
                      size: 50.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline,
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