import 'package:chandra_pos/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  SignSignUpResult result = await AuthServices()
                      .signUp('joko@gmail.com', '123456', 'joko');
                  if (result.pengguna == null) {
                    debugPrint(result.pesan);
                  } else {
                    debugPrint(result.pengguna.toString());
                  }
                },
                child: const Text('Sign Up'),
              ),
              ElevatedButton(
                onPressed: () async {
                  SignSignUpResult result = await AuthServices().signIn(
                    'joko@gmail.com',
                    '123456',
                  );
                  if (result.pengguna == null) {
                    debugPrint(result.pesan);
                  } else {
                    debugPrint(result.pengguna.toString());
                  }
                },
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
