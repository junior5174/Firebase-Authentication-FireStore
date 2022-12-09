import 'package:autenticacion/models/firebaseuser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authenticate/handler.dart';
import 'home/home.dart';

class Wapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);
    if (user == null) {
      return Handler();
    } else {
      return Home();
    }
  }
}
