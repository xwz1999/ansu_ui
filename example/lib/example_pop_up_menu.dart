import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExamplePopUpMenu extends StatefulWidget {
  ExamplePopUpMenu({Key key}) : super(key: key);

  @override
  _ExamplePopUpMenuState createState() => _ExamplePopUpMenuState();
}

class _ExamplePopUpMenuState extends State<ExamplePopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'PopUpMenu',
      body: ListView(
        children: [
          ListTile(
            title: 'PopUpMenu'.text,
            trailing: Builder(
              builder: (context) {
                return TextButton(
                  child: 'test'.text,
                  onPressed: () {
                    showASPopUpMenu<int>(
                      context: context,
                      initValue: 3,
                      items: [
                        PopupMenuItem(child: 'test'.text, value: 1),
                        PopupMenuItem(child: 'test'.text, value: 2),
                        PopupMenuItem(child: 'test'.text, value: 3),
                        PopupMenuItem(child: 'test'.text, value: 4),
                      ],
                    ).then((value) {});
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
