import 'package:flutter/material.dart';
import 'package:example/data/color_object.dart';
import 'package:ansu_ui/ansu_ui.dart';

class ExampleStyleColor extends StatefulWidget {
  ExampleStyleColor({Key key}) : super(key: key);

  @override
  _ExampleStyleColorState createState() => _ExampleStyleColorState();
}

class _ExampleStyleColorState extends State<ExampleStyleColor> {
  _buildCard(ColorObject object) {
    return Column(
      children: [
        Text(object.name),
        Text(object.codeName),
        Text(
          object.color.toString(),
          style: TextStyle(
            color: object.color,
            backgroundColor:
                object.color.value > 0xFFAAAAAA ? Colors.black : Colors.white,
          ),
        ),
        Card(
          color: object.color,
          child: SizedBox(height: 50.w, width: double.infinity),
        ),
        SizedBox(height: 16.w),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'Color',
      body: ListView.builder(
        itemBuilder: (context, index) {
          return _buildCard(colorObjects[index]);
        },
        itemCount: colorObjects.length,
      ),
    );
  }
}
