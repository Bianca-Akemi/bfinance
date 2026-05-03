import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/profile/module.dart';
import 'package:s_mobills/modules/transactions/module.dart';
import 'package:s_mobills/ui/ui.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: SMobillsAppBar(
            title: state.transactionId != -1
                ? (state.transactionType == TransactionType.expense
                      ? context.l10n.editExpenseTransaction
                      : context.l10n.editIncomeTransaction)
                : (state.transactionType == TransactionType.expense
                      ? context.l10n.newExpenseTransaction
                      : context.l10n.newIncomeTransaction),
            backgroundColor: context.colorScheme.primary,
            elevation: 0,
          ),
          backgroundColor: context.colorScheme.primary,
          body: Scrollbar(
            thumbVisibility: true,
            child: SMobillsLoadingOverlay(
              isLoading: state.isLoading,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SMobillsSpacing.md,
                        TransactionValue(
                          controller: context
                              .read<TransactionCubit>()
                              .transactionValueCurrencyTextFieldController,
                        ),
                        SMobillsSpacing.lg,
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: context.colorScheme.background,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        spacing: 5,
                        children: [
                          InputRow.checkbox(
                            icon: Icons.check_circle_outline,
                            hintText:
                                state.transactionType == TransactionType.expense
                                ? context.l10n.paidOut
                                : context.l10n.received,
                            switchOn: state.done,
                            onChanged: context
                                .read<TransactionCubit>()
                                .onChangedDone,
                          ),
                          InputRow.text(
                            controller: context
                                .read<TransactionCubit>()
                                .descriptionTextEditingController,
                            icon: Icons.edit_outlined,
                            hintText: context.l10n.description,
                          ),
                          InputRow.selectable(
                            icon: Icons.calendar_today_outlined,
                            hintText: context.l10n.date,
                            options: _dateOptions(state, context),
                          ),
                          InputRow.selectable(
                            icon: Icons.money_outlined,
                            hintText: context.l10n.account,
                            options: _selectAccountOptions(state, context),
                          ),
                          Visibility(
                            visible:
                                state.transactionType == TransactionType.expense,
                            child: InputRow.selectable(
                              icon: Icons.category_outlined,
                              hintText: context.l10n.category,
                              options: _categoriesOptions(state, context),
                            ),
                          ),
                          Visibility(
                            visible:
                                state.transactionType == TransactionType.income,
                            child: InputRow.selectable(
                              icon: Icons.category_outlined,
                              hintText: context.l10n.category,
                              options: _categoriesOptions(state, context),
                            ),
                          ),
                          const Spacer(),
                          SMobillsButton(
                            title: context.l10n.save,
                            onPressed: () {
                              context.read<TransactionCubit>().saveTransaction();
                            },
                            isLoading: state.isLoading,
                          ),
                          SMobillsSpacing.sm,
                          Visibility(
                            visible: state.transactionId != -1,
                            child: SMobillsButton(
                              title: context.l10n.deleteAccount,
                              onPressed: context
                                  .read<TransactionCubit>()
                                  .deleteTransaction,
                              buttonStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              textStyle: SMobillsTextStyles.button.copyWith(
                                fontSize: FontSize.subtitle1,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 166, 36, 26),
                              ),
                            ),
                          ),
                          SMobillsSpacing.lg,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _categoriesOptions(
    TransactionState state,
    BuildContext context,
  ) {
    return [
      GestureDetector(
        onTap: () async {
          final result = await showModalBottomSheet<Map<String, dynamic>>(
            context: context,
            builder: (_) {
              return SelectCategoryPage(type: state.transactionType);
            },
          );

          if (result != null) {
            final categoryType = result['categoryType'] as CategoryType;

            context.read<TransactionCubit>().onChangeSelectedCategory(
              categoryType,
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(),
            color: Colors.white,
          ),
          child: Text(
            state.categoryType.displayName,
            style: SMobillsTextStyles.caption.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> _selectAccountOptions(
    TransactionState state,
    BuildContext context,
  ) {
    return [
      GestureDetector(
        onTap: () async {
          final result = await showModalBottomSheet<Map<String, dynamic>>(
            context: context,
            builder: (_) {
              return const AccountsPage(isNewTransaction: true);
            },
          );

          if (result != null) {
            final bankAccount = result['bankAccount'] as BankAccount;
            context.read<TransactionCubit>().onChangeSelectedBankAccount(
              bankAccount,
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(),
            color: Colors.white,
          ),
          child: Text(
            state.bankAccountName,
            style: SMobillsTextStyles.caption.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> _dateOptions(TransactionState state, BuildContext context) {
    final refYear = state.referenceYear;
    final refMonth = state.referenceMonth;
    final firstDayOfMonth = DateTime(refYear, refMonth);
    final lastDayOfMonth = DateTime(refYear, refMonth + 1, 0);

    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));
    final isYesterdayInRefMonth =
        yesterday.month == refMonth && yesterday.year == refYear;
    final isTodayInRefMonth = now.month == refMonth && now.year == refYear;

    DateTime clampedInitialDate(DateTime? candidate) {
      final d = candidate ?? firstDayOfMonth;
      if (d.isBefore(firstDayOfMonth)) return firstDayOfMonth;
      if (d.isAfter(lastDayOfMonth)) return lastDayOfMonth;
      return d;
    }

    return [
      Visibility(
        visible: state.showAllDateOptions && isYesterdayInRefMonth,
        child: GestureDetector(
          onTap: () => context.read<TransactionCubit>().onChangeSelectedDate(
            TransactionDate.yesterdayDate,
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(),
              color: (state.selectedDate?.isYesterday ?? false)
                  ? context.colorScheme.primaryContainer
                  : Colors.white,
            ),
            child: Text(
              context.l10n.yesterday,
              style: SMobillsTextStyles.caption.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      if (isYesterdayInRefMonth) SMobillsInline.sm,
      Visibility(
        visible: state.showAllDateOptions && isTodayInRefMonth,
        child: GestureDetector(
          onTap: () => context.read<TransactionCubit>().onChangeSelectedDate(
            TransactionDate.todayDate,
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(),
              color: (state.selectedDate?.isToday ?? false)
                  ? context.colorScheme.primaryContainer
                  : Colors.white,
            ),
            child: Text(
              context.l10n.today,
              style: SMobillsTextStyles.caption.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      if (isTodayInRefMonth) SMobillsInline.sm,
      Visibility(
        visible: state.showAllDateOptions,
        child: GestureDetector(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: clampedInitialDate(state.selectedDate),
              firstDate: firstDayOfMonth,
              lastDate: lastDayOfMonth,
            );

            context.read<TransactionCubit>().onChangeSelectedDate(date);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(),
              color: context.colorScheme.background,
            ),
            child: Text(
              context.l10n.other,
              style: SMobillsTextStyles.caption.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      Visibility(
        visible: !state.showAllDateOptions,
        child: GestureDetector(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: clampedInitialDate(state.selectedDate),
              firstDate: firstDayOfMonth,
              lastDate: lastDayOfMonth,
            );
            context.read<TransactionCubit>().onChangeSelectedDate(date);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(),
              color: context.colorScheme.primaryContainer,
            ),
            child: Text(
              SMobillsDateFormatter.formatDate(
                context: context,
                date: state.selectedDate ?? DateTime.now(),
              ),
              style: SMobillsTextStyles.subtitle2,
            ),
          ),
        ),
      ),
    ];
  }
}
