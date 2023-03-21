import 'package:flutter/material.dart';

class OrientationDemo extends StatefulWidget {
  const OrientationDemo({super.key});

  @override
  State<OrientationDemo> createState() => _OrientationDemoState();
}

class _OrientationDemoState extends State<OrientationDemo> {
  var name = "Deven Joshi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  Widget _buildVerticalLayout() {
    return Center(
      child: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: Icon(
              Icons.account_circle,
              size: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 32.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text(
              "Demo Data",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalLayout() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Icon(
                    Icons.account_circle,
                    size: 100.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                6,
                (n) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 32.0),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
