import 'package:flutter/material.dart';

class Wcards extends StatelessWidget {
  late final String name, imageurl, time;
  Wcards(this.name, this.imageurl, this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.amber,
        backgroundImage: NetworkImage(imageurl),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
