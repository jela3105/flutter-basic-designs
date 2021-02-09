import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _principaImage(),
          _header(),
          _accions(),
        ],
      ),
    );
  }

  Widget _principaImage() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/a1/78/55/a1785592d41e140f00ef1cf3d9597dcb.png'),
    );
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          _headerTitles(),
          _headerScore(),
        ],
      ),
    );
  }

  _headerTitles() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('A beautiful sun set', style: titleStyle),
          SizedBox(
            height: 7.0,
          ),
          Text('View from the mountains', style: subtitleStyle),
        ],
      ),
    );
  }

  Widget _headerScore() {
    return Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.red, size: 30),
        Text(
          '41',
          style: TextStyle(fontSize: 20.0),
        )
      ],
    );
  }

  Widget _accions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE'),
      ],
    );
  }

  _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }
}
