import 'package:flutter/cupertino.dart';
import 'package:quotes_app/screens/quotes_edit_screen.dart';
import 'package:quotes_app/screens/quotes_screen.dart';
import '../screens/home_screen.dart';

Map<String, WidgetBuilder> screen_route = {
  '/': (context) => HomeScreen(),
  'quotes': (context) => QuoatesScreen(),
  'edit':(context) => QuotesEditScreen(),
};
