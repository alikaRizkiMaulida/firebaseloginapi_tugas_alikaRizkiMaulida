import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapi_pekan5/bloc/login_bloc.dart';
import 'package:loginapi_pekan5/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => LoginBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoute.login.name,
        routes: routes,
      ),
    );
  }
}
