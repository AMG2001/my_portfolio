import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/pages/home_page/home_page.dart';
import 'package:portfolio_website/pages/home_page/home_page_cubit/home_page_cubit.dart';
import 'package:portfolio_website/pages/home_page/home_page_cubit/home_page_state.dart';

void main(List<String> args) {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        home: HomePage(),
      ),
    );
  }
}
