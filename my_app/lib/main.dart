import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'posts.dart';
import 'forms.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
      // home: My_App(),
      routes: {
        '/' : (context) => Loader(),
        '/login' : (context) => LoginForm(),
        '/feeds' : (context) => My_App(),
      },
    ));

