import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';

import '../../../Helpers/themecachhelper.dart';
import '../apptheme.dart';
import 'theme_state.dart';




class AppthemeCubit extends Cubit<ChangeTheme> {

  AppthemeCubit() : super(const ChangeTheme());


  void changeTheme(bool theme) async {
    if (theme) {
      await ThemeCachHelper().saveThemeData(true);

      emit( ChangeTheme(theme:  appthemedata[AppTheme.dark]!) );
    } else {
      await ThemeCachHelper().saveThemeData(false);

      emit( ChangeTheme(theme:  appthemedata[AppTheme.light]!));
    }
  }

  void getthemeTheme() async {
    final bool isDark = await ThemeCachHelper().getThemeData();
    if (isDark) {
      emit( ChangeTheme(theme:  appthemedata[AppTheme.dark]!));
    } else {
      emit( ChangeTheme(theme:  appthemedata[AppTheme.light]!));
    }
  }
}