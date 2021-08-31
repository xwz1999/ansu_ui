import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/chart/circle_chart_widget.dart';
import 'package:flutter/material.dart';

class ExampleChart extends StatefulWidget {
  const ExampleChart({Key? key}) : super(key: key);

  @override
  _ExampleChartState createState() => _ExampleChartState();
}

class _ExampleChartState extends State<ExampleChart> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'chart',
      body: ListView(
        children: [
          20.hb,
          ListTile(
              title: Text('circle chart'),
              trailing: Container(
                width: 50.w,
                height: 50.w,
                child: CircleChart(
                  size: 40.w,
                  color: Colors.red,
                  aboveStrokeWidth: 10.w,
                  core: '65%'.text.size(20.sp).color(kTextColor).make(),
                  aspectRato: 0.65,
                ),
              )),
        ],
      ),
    );
  }
}
