import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/profile/module.dart';
import 'package:s_mobills/ui/ui.dart';

class EditAccountPage extends StatelessWidget {
  const EditAccountPage({super.key, required this.account});

  final BankAccount account;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EditAccountCubit(
        deleteBankAccountUseCase: GetIt.I<DeleteBankAccountUseCase>(),
        updateBankAccountUseCase: GetIt.I<UpdateBankAccountUseCase>(),
      )..loadAccount(account: account),
      child: const EditAccountView(),
    );
  }
}

class EditAccountView extends StatelessWidget {
  const EditAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditAccountCubit, EditAccountState>(
      builder: (context, state) {
        return Scaffold(
          appBar: SMobillsAppBar(
            title: context.l10n.editAccount,
            customPreferredSize: const Size.fromHeight(80),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
            ),
          ),
          body: SMobillsLoadingOverlay(
            isLoading: state.isSaveLoading || state.isDeleteLoading,
            child: Column(
              children: [
                SMobillsSpacing.lg,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: Text(
                      context.l10n.editAccountDetails,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SMobillsTextField(
                  paddingVertical: 30,
                  controller: context
                      .read<EditAccountCubit>()
                      .accountNameEditController,
                  hintText: context.l10n.name,
                ),
                SMobillsSpacing.sm,
                SMobillsTextField(
                  paddingVertical: 30,
                  controller: context
                      .read<EditAccountCubit>()
                      .accountBalanceEditController,
                  hintText: context.l10n.currentBalance,
                  keyboardType: TextInputType.number,
                ),
                SMobillsSpacing.lg,
                SMobillsSpacing.lg,
                SMobillsSpacing.lg,
                SMobillsSpacing.lg,
                SMobillsButton(
                  width: 350,
                  title: context.l10n.save,
                  onPressed: context.read<EditAccountCubit>().saveAccount,
                  isLoading: state.isSaveLoading,
                ),
                SMobillsSpacing.lg,
                SMobillsButton(
                  title: context.l10n.deleteAccount,
                  onPressed: context.read<EditAccountCubit>().deleteAccount,
                  isLoading: state.isDeleteLoading,
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
          ),
        );
      },
    );
  }
}
