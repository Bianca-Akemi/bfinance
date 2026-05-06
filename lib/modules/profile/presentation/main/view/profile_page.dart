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
        getProfilePhotoUseCase: GetIt.I<GetProfilePhotoUseCase>(),
        uploadProfilePhotoUseCase: GetIt.I<UploadProfilePhotoUseCase>(),
        deleteProfilePhotoUseCase:
            GetIt.I<DeleteProfilePhotoUseCase>(),
      )..info(),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  void _showPhotoOptions(BuildContext context, ProfileCubit cubit) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (bottomSheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  context.l10n.profilePhoto,
                  style: SMobillsTextStyles.h6.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                ListTile(
                  leading: const Icon(Icons.photo_library_outlined),
                  title: Text(
                    context.l10n.changePhoto,
                    style: SMobillsTextStyles.body1,
                  ),
                  onTap: () {
                    Navigator.of(bottomSheetContext).pop();
                    cubit.pickAndUploadPhoto();
                  },
                ),
                if (cubit.hasPhoto)
                  ListTile(
                    leading: Icon(
                      Icons.delete_outline,
                      color: context.colorScheme.error,
                    ),
                    title: Text(
                      context.l10n.removePhoto,
                      style: SMobillsTextStyles.body1.copyWith(
                        color: context.colorScheme.error,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(bottomSheetContext).pop();
                      cubit.removePhoto();
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

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
          appBar: SMobillsAppBar(title: context.l10n.profile, ),
          
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
                        GestureDetector(
                          onTap: () => _showPhotoOptions(
                            context,
                            context.read<ProfileCubit>(),
                          ),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor:
                                    Colors.white.withValues(alpha: 0.4),
                                backgroundImage: state.photoBytes != null &&
                                        state.photoBytes!.isNotEmpty
                                    ? MemoryImage(state.photoBytes!)
                                    : null,
                                child: state.photoBytes != null &&
                                        state.photoBytes!.isNotEmpty
                                    ? null
                                    : Text(
                                        state.initialLetters,
                                        style:
                                            SMobillsTextStyles.h4.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.secondary,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
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
