import 'package:flutter/material.dart';
import 'package:NguyenHuyTruong_UdacityExercise/category.dart';
import 'category_route.dart';

const _categoryName = 'Cake V';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.blue;

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          print('I was pressed');
          setSta
        },
      ),
    )
  }
  /*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //child:
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryRoute(),
    );
  }*/
}