import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/constants.dart';
import 'package:top_movies/core/utils/assets_data.dart';
import 'package:top_movies/core/widgets/custom_loading.dart';
import 'package:top_movies/features/home/presentation/manager/top_movies_cubit.dart';

import '../../../../../core/widgets/custom_err_message.dart';
import 'custom_move_item.dart';

class HomeViewBody extends StatelessWidget {
  ScrollController controller = ScrollController();

   HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopMoviesCubit, TopMoviesState>(
      builder: (context, state) {
    if(state is TopMoviesSuccess)
      {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return  SizedBox(
                child: AspectRatio(
                    aspectRatio: 5.2 / 4, child: CustomMoveItem(
                  state.topMovies[index]
                )));
          },
        );

      }
    else if(state is TopMoviesFailure)
      {
        return CustomErrorMessage(errMessage: state.message,);

      }
    else {
      return CustomLoading();
    }
      },
    );
  }

}
