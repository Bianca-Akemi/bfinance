// ignore_for_file: no_default_cases

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/modules/modules.dart';
import 'package:s_mobills/ui/ui.dart';

enum Routes {
  splash,
  sign,
  login,
  home,
  profile,
  profileEdit,
  profileAccounts,
  profileAccountsCreate,
  profileAccountsEdit,
  transactions,
  newTransaction,
  editTransaction,
  categories,
}

extension RoutesExtension on Routes {
  String get path {
    switch (this) {
      case Routes.splash:
        return '/splash';
      case Routes.sign:
        return '/sign';
      case Routes.login:
        return '/login';
      case Routes.home:
        return '/home';
      case Routes.profile:
        return '/profile';
      case Routes.profileEdit:
        return 'edit';
      case Routes.profileAccounts:
        return 'accounts';
      case Routes.profileAccountsCreate:
        return 'create';
      case Routes.profileAccountsEdit:
        return 'edit';
      case Routes.transactions:
        return '/transactions';
      case Routes.newTransaction:
        return 'new_transaction';
      case Routes.editTransaction:
        return 'edit_transaction';
      case Routes.categories:
        return '/categories';
    }
  }

  String get name {
    switch (this) {
      case Routes.splash:
        return 'Splash';
      case Routes.sign:
        return 'Sign';
      case Routes.login:
        return 'Login';
      case Routes.home:
        return 'Home';
      case Routes.profile:
        return 'Profile';
      case Routes.profileEdit:
        return 'Edit';
      case Routes.profileAccounts:
        return 'Accounts';
      case Routes.profileAccountsCreate:
        return 'Create Account';
      case Routes.profileAccountsEdit:
        return 'Edit Account';
      case Routes.transactions:
        return 'Transactions';
      case Routes.newTransaction:
        return 'New Transaction';
      case Routes.editTransaction:
        return 'Edit Transaction';
      case Routes.categories:
        return 'Categories';
    }
  }
}

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.splash.path,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) => NavigationCubit(),
            child: MainPage(screen: child),
          );
        },
        routes: [
          GoRoute(
            name: Routes.home.name,
            path: Routes.home.path,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomePage()),
          ),
          GoRoute(
            name: Routes.transactions.name,
            path: Routes.transactions.path,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: TransactionsPage()),
            routes: [
              GoRoute(
                name: Routes.newTransaction.name,
                path: Routes.newTransaction.path,
                builder: (context, state) {
                  final extras = state.extra! as Map<String, dynamic>;
                  final transactionType = extras['type'] as TransactionType;
                  return NewTransactionPage(transactionType: transactionType);
                },
              ),
              GoRoute(
                name: Routes.editTransaction.name,
                path: Routes.editTransaction.path,
                builder: (context, state) {
                  final transaction = state.extra! as Transaction;
                  return EditTransactionPage(transaction: transaction);
                },
              ),
            ],
          ),
          GoRoute(
            name: Routes.profile.name,
            path: Routes.profile.path,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfilePage()),
            routes: [
              GoRoute(
                name: Routes.profileEdit.name,
                path: Routes.profileEdit.path,
                builder: (context, state) => const EditPage(),
              ),
              GoRoute(
                name: Routes.profileAccounts.name,
                path: Routes.profileAccounts.path,
                builder: (context, state) => const AccountsPage(),
                routes: [
                  GoRoute(
                    name: Routes.profileAccountsCreate.name,
                    path: Routes.profileAccountsCreate.path,
                    builder: (context, state) => const CreateAccountPage(),
                  ),
                  GoRoute(
                    name: Routes.profileAccountsEdit.name,
                    path: Routes.profileAccountsEdit.path,
                    builder: (context, state) {
                      final account = state.extra! as BankAccount;
                      return EditAccountPage(account: account);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.name,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: SplashPage()),
      ),
      GoRoute(
        name: Routes.login.name,
        path: Routes.login.path,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: LoginPage()),
      ),
      GoRoute(
        name: Routes.sign.name,
        path: Routes.sign.path,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: SignUpPage()),
      ),
      GoRoute(
        name: Routes.categories.name,
        path: Routes.categories.path,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: TransactionsPage()),
      ),
    ],
    errorBuilder: (context, state) => const Text('Not found'),
  );

  static GoRouter get router => _router;

  static OverlayEntry? _currentOverlay;

  static void _showOverlay({
    required String message,
    required Color backgroundColor,
    required IconData icon,
  }) {
    _currentOverlay?.remove();
    _currentOverlay = null;

    final navigatorState = _rootNavigatorKey.currentState!;
    final context = navigatorState.context;
    final overlay = navigatorState.overlay!;
    final topPadding = MediaQuery.of(context).padding.top;

    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) => _TopNotification(
        message: message,
        backgroundColor: backgroundColor,
        icon: icon,
        topPadding: topPadding,
        onDismissed: () {
          entry.remove();
          if (_currentOverlay == entry) _currentOverlay = null;
        },
      ),
    );

    _currentOverlay = entry;
    overlay.insert(entry);
  }

  static void showError({required String message}) {
    _showOverlay(
      message: message,
      backgroundColor: Colors.red,
      icon: Icons.error,
    );
  }

  static void showSuccess({required String message}) {
    _showOverlay(
      message: message,
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
    );
  }
}

class _TopNotification extends StatefulWidget {
  const _TopNotification({
    required this.message,
    required this.backgroundColor,
    required this.icon,
    required this.topPadding,
    required this.onDismissed,
  });

  final String message;
  final Color backgroundColor;
  final IconData icon;
  final double topPadding;
  final VoidCallback onDismissed;

  @override
  State<_TopNotification> createState() => _TopNotificationState();
}

class _TopNotificationState extends State<_TopNotification>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
    Future.delayed(const Duration(seconds: 3), _dismiss);
  }

  void _dismiss() {
    if (!mounted) return;
    _controller.reverse().then((_) {
      if (mounted) widget.onDismissed();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.topPadding + 16,
      left: 16,
      right: 16,
      child: SlideTransition(
        position: _slideAnimation,
        child: GestureDetector(
          onVerticalDragEnd: (details) {
            if (details.primaryVelocity != null &&
                details.primaryVelocity! < 0) {
              _dismiss();
            }
          },
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Icon(widget.icon, size: 20, color: Colors.white),
                  Flexible(
                    child: Text(
                      widget.message,
                      style: SMobillsTextStyles.body1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
