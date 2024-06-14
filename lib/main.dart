import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/bloc/bloc/movies_bloc/movies_cubit.dart';
import 'controller/utils/app_routes/app_routes.dart';
import 'controller/utils/app_theme/app_theme.dart';
import 'controller/utils/media_size.dart';
import 'view/home_page.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MoviesCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Application Root.
  @override
  Widget build(BuildContext context) {
    mediaHeight = MediaQuery.of(context).size.height;
    mediaWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Sheba',
      theme: AppTheme.darkMode,
      initialRoute: HomePage.routeName,
      onGenerateRoute: AppRoutes.onGenerate,
    );
  }
}
