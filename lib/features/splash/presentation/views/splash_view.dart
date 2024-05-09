import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:top_movies/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(body: SplashViewBody());
  }
}


