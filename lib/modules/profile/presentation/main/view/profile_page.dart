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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: SMobillsAppBar(
            title: context.l10n.profile,
          ),
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading,
            child: Column(
              children: [
              Skeletonizer(
                enabled: state.isLoading,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: context.mediaQuery.size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        context.colorScheme.primary,
                        context.colorScheme.secondary,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor:
                            Colors.white.withValues(alpha: 0.2),
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
                        style:
                            SMobillsTextStyles.subtitle1.copyWith(
                          color:
                              Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
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
                        onTap:
                            context.read<ProfileCubit>().editProfile,
                      ),
                      ProfileMenuItem(
                        title: context.l10n.bankAccounts,
                        icon: Icons.wallet_outlined,
                        onTap:
                            context.read<ProfileCubit>().accounts,
                      ),
                      ProfileMenuItem(
                        title: context.l10n.exit,
                        icon: Icons.logout_outlined,
                        onTap:
                            context.read<ProfileCubit>().logout,
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
