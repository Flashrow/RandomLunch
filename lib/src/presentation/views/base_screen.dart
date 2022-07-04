import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:random_lunch/src/presentation/blocs/random_recipe/random_recipe_cubit.dart';

import '../../../injection.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({Key? key}) : super(key: key);
  final RandomRecipeCubit randomRecipeCubit = getIt<RandomRecipeCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Icon(
                Icons.fastfood_rounded,
                color: Colors.orangeAccent,
                size: 100,
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Logger().i("get random recipe button clicked");
                  randomRecipeCubit.getRandomRecipe();
                },
                child: const Text("Get random recipe"),
              ),
              const SizedBox(height: 30),
              BlocBuilder<RandomRecipeCubit, RandomRecipeState>(
                bloc: randomRecipeCubit,
                builder: (context, state) {
                  if (state is Loading) {
                    return const CircularProgressIndicator();
                  } else if (state is Loaded) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                            state.recipe.title ?? "no title",
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "ready in ${state.recipe.readyInMinutes} mins",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }
                  return const Text("Click the button");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
