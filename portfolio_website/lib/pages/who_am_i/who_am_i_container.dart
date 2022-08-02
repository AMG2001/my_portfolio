import 'package:flutter/material.dart';

class WhoAmIContainer extends StatelessWidget {
  const WhoAmIContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text("Who am I Page"),
      ),
    );
  }
}
