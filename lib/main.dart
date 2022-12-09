import 'package:autenticacion/models/firebaseuser.dart';
import 'package:autenticacion/screens/wrapper.dart';
import 'package:autenticacion/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.black,
            buttonTheme: ButtonThemeData(
                buttonColor: Colors.black,
                textTheme: ButtonTextTheme.primary,
                colorScheme: Theme.of(context)
                    .colorScheme
                    .copyWith(secondary: Colors.white)),
            fontFamily: 'Georgia',
            textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
              headline2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            )),
        home: Wapper(),
      ),
    );
  }
}
