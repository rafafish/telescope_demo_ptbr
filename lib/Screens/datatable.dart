import 'package:flutter/material.dart';

class DataTableScreen extends StatefulWidget {
  @override
  _DataTableScreenState createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<Widget> _buildCells(int count) {
    return List.generate(
      count,
      (index) => Container(
        alignment: Alignment.center,
        width: 120.0,
        height: 60.0,
        color: Colors.white,
        margin: EdgeInsets.all(4.0),
        child: Text("${index + 1}"),
      ),
    );
  }

  List<Widget> _buildRows(int count) {
    return List.generate(
      count,
      (index) => Row(
        children: _buildCells(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildCells(20),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 120.0,
                          height: 60.0,
                          color: Colors.white,
                          margin: EdgeInsets.all(4.0),
                          child: Text('Header1'),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 120.0,
                          height: 60.0,
                          color: Colors.white,
                          margin: EdgeInsets.all(4.0),
                          child: Text('Header 2'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
