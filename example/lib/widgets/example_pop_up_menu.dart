import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExamplePopUpMenu extends StatefulWidget {
  ExamplePopUpMenu({Key key}) : super(key: key);

  @override
  _ExamplePopUpMenuState createState() => _ExamplePopUpMenuState();
}

class _ExamplePopUpMenuState extends State<ExamplePopUpMenu> {
  int _value;
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'PopUpMenu',
      body: ListView(
        children: [
          SizedBox(height: 500),
          ListTile(
            title: 'PopUpMenu'.text.make(),
            trailing: Builder(
              builder: (context) {
                return TextButton(
                  child: '$_value'.text.make(),
                  onPressed: () async {
                    int result = await showASPopUpMenu<int>(
                      context: context,
                      initValue: _value,
                      items: List.generate(
                        20,
                        (index) => PopupMenuItem(
                          child: '$index'.text.isIntrinsic.make(),
                          value: index,
                        ),
                      ),
                    );
                    if (result != null)
                      setState(() {
                        _value = result;
                      });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
