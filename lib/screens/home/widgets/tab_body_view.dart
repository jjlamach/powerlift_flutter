import 'package:flutter/material.dart';
import 'package:power_lift/data/exerciseDto/category_dto.dart';
import 'package:power_lift/data/exerciseDto/exercise_dto.dart';
import 'package:power_lift/utils/app_circular_progress_indicator.dart';
import 'package:power_lift/utils/common.dart';

class TabBodyView extends StatefulWidget {
  final List<(CategoryDto, ExerciseDto)> workouts;
  const TabBodyView({required this.workouts, super.key});

  @override
  State<TabBodyView> createState() => _TabBodyViewState();
}

// Keeps the state of each tabBodyView alive when off screen
class _TabBodyViewState extends State<TabBodyView>
    with AutomaticKeepAliveClientMixin<TabBodyView> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (widget.workouts.isEmpty) {
      return const AppCircularProgressIndicator();
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
        // key: _key,
        separatorBuilder: (context, index) => const SizedBox(
          height: 20.0,
        ),
        itemCount: widget.workouts.length,
        itemBuilder: (context, index) {
          final itemName = widget.workouts[index].$2.name;
          return GestureDetector(
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              Common.appSnackBar('Navigates to details screen.'),
            ),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff1e2021),
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          itemName,
                          style: Theme.of(context).textTheme.headlineMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Some workout description here would be nice.",
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
