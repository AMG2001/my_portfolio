import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/pages/home_page/home_page_components/appBar/home_page_appBar.dart';
import 'package:portfolio_website/pages/home_page/home_page_cubit/home_page_cubit.dart';
import 'package:portfolio_website/pages/home_page/home_page_cubit/home_page_state.dart';
import 'package:portfolio_website/pages/my_experience/my_experience_container.dart';
import 'package:portfolio_website/pages/who_am_i/who_am_i_container.dart';
import 'package:portfolio_website/pages/work_section/work_section_container.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int x;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: HomePageAppBar(),
        body: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: PageView(
                pageSnapping: true,
                scrollDirection: Axis.vertical,
                controller: BlocProvider.of<HomePageCubit>(context).controller,
                children: [
                  WhoAmIContainer(),
                  WorkSection(),
                  MyExperienceContainer()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
