import 'package:bloc_google_sin_in/app/app.dart';
import 'package:bloc_google_sin_in/home/home.dart';
import 'package:bloc_google_sin_in/login/login.dart';
import 'package:flutter/material.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}
