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
    return ListTile(
      title: Text('${object.name} ${object.color.toString().substring(6, 16)}'),
      subtitle: Text(object.codeName),
      trailing: Card(
        color: object.color,
        child: SizedBox(height: 50.w, width: 50.w),
      ),
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
