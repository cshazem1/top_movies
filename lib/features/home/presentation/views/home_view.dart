import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/features/home/presentation/manager/top_movies_cubit.dart';
import 'package:top_movies/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        body: HomeViewBody());
  }
}

