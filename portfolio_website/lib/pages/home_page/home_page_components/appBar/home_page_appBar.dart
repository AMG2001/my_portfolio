import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/constants/const_colors.dart';
import 'package:portfolio_website/pages/home_page/home_page_components/appBar/hovered_button.dart';
import 'package:portfolio_website/pages/home_page/home_page_cubit/home_page_cubit.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'dart:html' as html;

class HomePageAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      // TODO in leading we will add the logo
      leading: Icon(
        Icons.flutter_dash_outlined,
        size: 48,
        color: ConstColors.defaultOrange,
      ),
      title: Row(mainAxisSize: MainAxisSize.min, children: [
        HoveredButton(
            buttonText: "Who am I",
            buttonFunction: () {
              BlocProvider.of<HomePageCubit>(context).controller.jumpToPage(0);
            }),
        HoveredButton(
            buttonText: "Works Section",
            buttonFunction: () {
              BlocProvider.of<HomePageCubit>(context).controller.jumpToPage(1);
            }),
        HoveredButton(
            buttonText: "My Experience",
            buttonFunction: () {
              BlocProvider.of<HomePageCubit>(context).controller.jumpToPage(2);
            }),
        HoveredButton(
            buttonText: "Linked In",
            buttonFunction: () {
              html.window.open(
                  'https://www.linkedin.com/in/mohamad-amgad-239114159/',
                  'new tab');
            }),
        HoveredButton(
            buttonText: "Github",
            buttonFunction: () {
              html.window
                  .open('https://github.com/MavicaSoftwareDev', 'new tab');
            }),
      ]),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(16),
                shadowColor:
                    MaterialStateProperty.all(ConstColors.defaultOrange),
                backgroundColor:
                    MaterialStateProperty.all(ConstColors.defaultOrange),
              ),
              onPressed: () async {
                UrlLauncher.launch("tel:+201096482183");
              },
              child: Row(
                children: [
                  Text("Call Me"),
                  SizedBox(width: 12),
                  Icon(Icons.call)
                ],
              )),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
