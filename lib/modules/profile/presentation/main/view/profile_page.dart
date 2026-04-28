import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/modules.dart';
import 'package:s_mobills/ui/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(
        doLogoutUserUseCase: GetIt.I<DoLogoutUserUseCase>(),
        doGetUserInfoUseCase: GetIt.I<DoGetUserInfoUseCase>(),
      )..info(),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  void _showLogoutConfirmation(BuildContext context, ProfileCubit cubit) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Center(
          child: Text(
            context.l10n.logoutConfirmTitle,
            style: SMobillsTextStyles.h6.copyWith(fontSize: 26),
          ),
        ),
        content: Text(
          context.l10n.logoutConfirmMessage,
          textAlign: TextAlign.center,
          style: SMobillsTextStyles.body1,
        ),
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(
                  context.l10n.cancel,
                  style: SMobillsTextStyles.body1,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  cubit.logout();
                },
                style: TextButton.styleFrom(
                  foregroundColor: context.colorScheme.error,
                ),
                child: Text(
                  context.l10n.confirm,
                  style: SMobillsTextStyles.body1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: SMobillsAppBar(title: context.l10n.profile),
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading,
            child: Column(
              children: [
                Skeletonizer(
                  enabled: state.isLoading,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: context.mediaQuery.size.width,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white.withValues(alpha: 0.4),
                          child: Text(
                            state.initialLetters,
                            style: SMobillsTextStyles.h4.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          state.name,
                          style: SMobillsTextStyles.h6.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          state.email,
                          style: SMobillsTextStyles.subtitle1.copyWith(
                            color: Colors.white.withValues(alpha: 0.8),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          title: context.l10n.myRegistration,
                          icon: Icons.person_outlined,
                          onTap: context.read<ProfileCubit>().editProfile,
                        ),
                        ProfileMenuItem(
                          title: context.l10n.bankAccounts,
                          icon: Icons.wallet_outlined,
                          onTap: context.read<ProfileCubit>().accounts,
                        ),
                        ProfileMenuItem(
                          title: context.l10n.exit,
                          icon: Icons.logout_outlined,
                          onTap: () => _showLogoutConfirmation(
                            context,
                            context.read<ProfileCubit>(),
                          ),
                          isDestructive: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
