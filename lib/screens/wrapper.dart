import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/screens/auth/authenticate.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    // return either Home or Auth widget

    if (user == null)
      return Authenticate();
    else
      return Home();
  }
}
