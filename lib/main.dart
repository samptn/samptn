import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/views/home/home_screen.dart';
import 'bloc/portfolio_app_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PortfolioAppBloc>(
          create: (context) => PortfolioAppBloc()
            ..add(
              LoadResume(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'UI components',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        home: const MobileHomeScreen(),
      ),
    );
  }
}
