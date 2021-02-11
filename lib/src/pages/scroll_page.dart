import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(),
        ],
      ),
    );
  }

  Widget _page1() {
    return Container(
      child: Text('Page1'),
    );
  }

  Widget _page2() {
    return Container(
      child: Text('Page1'),
    );
  }
}
