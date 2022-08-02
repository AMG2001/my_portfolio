import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/pages/home_page/home_page_cubit/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
   int sectionIndex = 0;
  HomePageCubit() : super(HomePageStateInitial());
   PageController controller = PageController(
    initialPage: 0
  );
  void moveToSection(int newIndex) {
    sectionIndex = newIndex;
  }
}
