import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/models/exerciseDto/category_dto.dart';
import 'package:power_lift/screens/home/state/category_cubit.dart';
import 'package:power_lift/screens/home/widgets/home_page_app_bar_view.dart';
import 'package:power_lift/utils/dimen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 0, vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final categories = context.watch<CategoryCubit>().state;
    if (_tabController.length != categories.length) {
      _tabController.dispose();
      _tabController = TabController(
        length: categories.length,
        vsync: this,
        initialIndex: 0,
      );
      // Listener to change state when the tab changes
      _tabController.addListener(() {
        if (!mounted) return;
        if (_tabController.indexIsChanging) {
          setState(() {
            _selectedIndex = _tabController.index;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categories = context.read<CategoryCubit>().state;
    if (categories.isEmpty) {
      return const SizedBox();
    }
    return SafeArea(
      child: BlocBuilder<CategoryCubit, List<CategoryDto>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return const SizedBox();
          }
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  collapsedHeight: Dimen.isBigScreen(context)
                      ? MediaQuery.of(context).size.height * 0.2
                      : MediaQuery.of(context).size.height * 0.3,
                  flexibleSpace: const HomePageAppBarView(),
                  bottom: TabBar(
                    controller: _tabController,
                    onTap: (index) {
                      _tabController.animateTo(
                        index,
                      );
                    },
                    isScrollable: true,
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    dividerColor: Colors.transparent,
                    padding: const EdgeInsets.only(bottom: 40.0),
                    tabs: List.generate(
                      state.length,
                      (index) {
                        return Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? Theme.of(context).colorScheme.secondary
                                : const Color(0xff191919),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Tab(text: state[index].Name),
                        );
                      },
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: TabBarView(
                    controller: _tabController,
                    children: List.generate(
                      state.length,
                      (index) => Text('${state[index].Name}'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
