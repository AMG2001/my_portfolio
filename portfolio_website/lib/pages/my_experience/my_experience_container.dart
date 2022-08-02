import 'package:flutter/material.dart';

class MyExperienceContainer extends StatelessWidget {
  const MyExperienceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text("My Experience Page"),
      ),
    );
  }
}
