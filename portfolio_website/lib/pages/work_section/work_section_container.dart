import 'package:flutter/material.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text("Work Section Page"),
      ),
    );
  }
}
