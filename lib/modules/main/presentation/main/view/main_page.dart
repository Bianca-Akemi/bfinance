import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:s_mobills/core/navigation/cubit/navigation_cubit.dart';
import 'package:s_mobills/core/navigation/routes/app_router.dart';
import 'package:s_mobills/l10n/l10n.dart';

class MainPage extends StatelessWidget {
  const MainPage({required this.screen, super.key});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screen,
      bottomNavigationBar:
          BlocBuilder<NavigationCubit, NavigationState>(
        buildWhen: (previous, current) =>
            previous.index != current.index,
        builder: (context, state) {
          return BottomNavigationBar(
            onTap: (value) {
              if (state.index != value) {
                context
                    .read<NavigationCubit>()
                    .getNavBarItem(value);
                context.go(_tabs(context)[value].initialLocation);
              }
            },
            items: _tabs(context),
            currentIndex: state.index,
          );
        },
      ),
    );
  }

  List<NamedNavigationBarItemWidget> _tabs(
    BuildContext context,
  ) =>
      [
        NamedNavigationBarItemWidget(
          initialLocation: Routes.home.path,
          icon: const Icon(Icons.home_outlined),
          activeIcon: const Icon(Icons.home_rounded),
          label: context.l10n.home,
        ),
        NamedNavigationBarItemWidget(
          initialLocation: Routes.transactions.path,
          icon: const Icon(Icons.receipt_long_outlined),
          activeIcon: const Icon(Icons.receipt_long_rounded),
          label: context.l10n.transactions,
        ),
        NamedNavigationBarItemWidget(
          initialLocation: Routes.profile.path,
          icon: const Icon(Icons.person_outline),
          activeIcon: const Icon(Icons.person_rounded),
          label: context.l10n.profile,
        ),
      ];
}

class NamedNavigationBarItemWidget extends BottomNavigationBarItem {
  NamedNavigationBarItemWidget({
    required this.initialLocation,
    required super.icon,
    super.activeIcon,
    super.label,
  });

  final String initialLocation;
}
