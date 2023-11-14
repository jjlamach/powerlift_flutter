import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/data/exerciseDto/category_dto.dart';
import 'package:power_lift/data/exerciseDto/exercise_dto.dart';
import 'package:power_lift/screens/home/state/category_cubit.dart';
import 'package:power_lift/screens/home/state/exercises_cubit.dart';
import 'package:power_lift/screens/home/state/tab_controller_cubit.dart';
import 'package:power_lift/screens/home/widgets/home_page_app_bar_view.dart';
import 'package:power_lift/screens/home/widgets/tab_body_view.dart';
import 'package:power_lift/utils/app_circular_progress_indicator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CategoryCubit, List<CategoryDto>>(
        builder: (context, state) {
          final categories = state.length;
          if (state.isEmpty) {
            return const AppCircularProgressIndicator();
          }
          return DefaultTabController(
            length: categories,
            initialIndex: context.read<TabControllerCubit>().state,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () {
                  // AutoRouter.of(context).push(const AddWorkoutRoute());
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              appBar: AppBar(
                toolbarHeight: 200,
                flexibleSpace: const HomePageAppBarView(),
                bottom: TabBar(
                  isScrollable: true,
                  onTap: (value) {
                    context.read<TabControllerCubit>().currentIndex(value);
                    context.read<ExercisesCubit>().getExercise(state[value].ID);
                  },
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  dividerColor: Colors.transparent,
                  padding: const EdgeInsets.only(bottom: 40.0),
                  tabs: List.generate(
                    state.length,
                    (index) {
                      return BlocBuilder<TabControllerCubit, int>(
                        builder: (context, tabState) => Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: tabState == index
                                ? Theme.of(context).colorScheme.secondary
                                : const Color(0xff191919),
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          child: Tab(
                            text:
                                '${state[index].Name.substring(0, 1).toUpperCase()}${state[index].Name.substring(1)}',
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              body:
                  BlocBuilder<ExercisesCubit, List<(CategoryDto, ExerciseDto)>>(
                builder: (context, _) => TabBarView(
                  children: List.generate(
                    state.length,
                    (index) => TabBodyView(
                      workouts: _,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
