import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/profile/module.dart';
import 'package:s_mobills/ui/ui.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EditCubit(
        doGetUserInfoUseCase: GetIt.I<DoGetUserInfoUseCase>(),
        doUpdateUserInfoUseCase: GetIt.I<DoUpdateUserInfoUseCase>(),
        doDeleteUserUseCase: GetIt.I<DoDeleteUserUseCase>(),
        doLogoutUserUseCase: GetIt.I<DoLogoutUserUseCase>(),
      )..getInfo(),
      child: const EditView(),
    );
  }
}

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditCubit, EditState>(
      builder: (context, state) {
        return Scaffold(
          appBar: SMobillsAppBar(
            title: context.l10n.myRegistration,
            customPreferredSize: const Size.fromHeight(80),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
            ),
          ),
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading || state.startDeleteAccount,
            child: SingleChildScrollView(
              child: state.startDeleteAccount
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        SMobillsSpacing.lg,
                        Center(child: Text(context.l10n.editProfileDetails)),
                        Column(
                          children: [
                            SMobillsTextField(
                              paddingVertical: 30,
                              controller: context
                                  .read<EditCubit>()
                                  .nameEditController,
                              hintText: context.l10n.name,
                            ),
                            SMobillsSpacing.sm,
                            SMobillsTextField(
                              paddingVertical: 30,
                              controller: context
                                  .read<EditCubit>()
                                  .emailEditController,
                              hintText: context.l10n.email,
                              readOnly: true,
                            ),
                            SMobillsSpacing.sm,
                            SMobillsTextField(
                              paddingVertical: 30,
                              controller: context
                                  .read<EditCubit>()
                                  .passwordEditController,
                              hintText: context.l10n.newPassword,
                              obscureText: true,
                            ),
                            SMobillsSpacing.lg,
                            SMobillsSpacing.lg,
                            SMobillsSpacing.lg,
                            SMobillsSpacing.lg,
                            SMobillsButton(
                              width: 350,
                              title: context.l10n.save,
                              onPressed: context.read<EditCubit>().updateInfo,
                              isLoading: state.isLoading,
                            ),
                            SMobillsSpacing.lg,
                            SMobillsButton(
                              title: context.l10n.deleteAccount,
                              onPressed: context
                                  .read<EditCubit>()
                                  .deleteAccount,
                              isLoading: state.startDeleteAccount,
                              buttonStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              textStyle: SMobillsTextStyles.button.copyWith(
                                fontSize: FontSize.subtitle1,
                                fontWeight: FontWeight.w600,
                                color: context.colorScheme.error,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
