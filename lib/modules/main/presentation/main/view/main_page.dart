import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:s_mobills/core/navigation/cubit/navigation_cubit.dart';
import 'package:s_mobills/core/navigation/routes/app_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({required this.screen, super.key});

  final Widget screen;

  static const _navBarColor = Color(0xFF8f09b5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screen,
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          return _CustomNavBar(
            currentIndex: state.index,
            onTap: (value) {
              if (state.index != value) {
                context.read<NavigationCubit>().getNavBarItem(value);
                context.go(_tabs[value].route);
              }
            },
            items: _tabs,
          );
        },
      ),
    );
  }

  static final List<_NavItem> _tabs = [
    _NavItem(route: Routes.home.path, icon: Icons.home_rounded),
    _NavItem(
      route: Routes.transactions.path,
      icon: Icons.swap_vert,
    ),
    _NavItem(route: Routes.profile.path, icon: Icons.person_rounded),
  ];
}

class _NavItem {
  const _NavItem({required this.route, required this.icon});

  final String route;
  final IconData icon;
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<_NavItem> items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            color: MainPage._navBarColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(items.length, (index) {
              final isSelected = index == currentIndex;
              return GestureDetector(
                onTap: () => onTap(index),
                behavior: HitTestBehavior.opaque,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  width: isSelected ? 60 : 48,
                  height: isSelected ? 60 : 48,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    items[index].icon,
                    color: isSelected
                        ? MainPage._navBarColor
                        : Colors.white.withValues(alpha: 0.7),
                    size: 40,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
