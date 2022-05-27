import 'package:chandra_pos/services/services.dart';
import 'package:chandra_pos/ui/pages/pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'bloc/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices().userStream,
      initialData: null,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(create: (_) => PenggunaBloc()),
          BlocProvider(create: (_) => ThemeBloc()),
          // BlocProvider(create: (_) => CreatemenuBloc()),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const Wrapper(),
            theme: state.themeData,
          ),
        ),
      ),
    );
  }
}
