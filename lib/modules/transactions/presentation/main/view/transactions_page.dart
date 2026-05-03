import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:get_it/get_it.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/modules.dart';
import 'package:s_mobills/ui/ui.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TransactionsCubit(
        getTransactionsPeriodUseCase: GetIt.I<GetTransactionsPeriodUseCase>(),
        getUserBankAccountsUseCase: GetIt.I<GetUserBankAccountsUseCase>(),
      ),
      child: const TransactionsView(),
    );
  }
}

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: SMobillsAppBar(
            title: context.l10n.transactions,
            elevation: 0,
            customPreferredSize: const Size.fromHeight(150),
            bottom: TransactionAppBarBottom(
              month: state.month,
              year: state.year,
              onTapBack: context.read<TransactionsCubit>().previousMonth,
              onTapNext: context.read<TransactionsCubit>().nextMonth,
            ),
          ),
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading,
            child: state.transactions.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: context.colorScheme.primaryContainer
                                .withValues(alpha: 0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.receipt_long_outlined,
                            size: 48,
                            color: context.colorScheme.primary,
                          ),
                        ),
                        SMobillsSpacing.lg,
                        const Text(
                          'Sem movimentações',
                          style: SMobillsTextStyles.h5,
                        ),
                        SMobillsSpacing.sm,
                        Text(
                          'Você ainda não registrou nenhuma'
                          ' transação neste mês',
                          textAlign: TextAlign.center,
                          style: SMobillsTextStyles.body1.copyWith(
                            color: context.colorScheme.onSurface.withValues(
                              alpha: 0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 16,
                          right: 16,
                        ),
                        child: Row(
                          children: [
                            _FilterButton(
                              hasActiveFilter: context
                                  .read<TransactionsCubit>()
                                  .hasActiveFilter,
                              onTap: () => _showFilterModal(context, state),
                            ),
                            const Spacer(),
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final count = context
                                      .read<TransactionsCubit>()
                                      .filteredTransactions
                                      .length;
                                  return Text(
                                    'total de registros: $count',
                                    style: SMobillsTextStyles.caption.copyWith(
                                      fontSize: 14,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: GroupedListView<Transaction, String>(
                            elements: context
                                .read<TransactionsCubit>()
                                .filteredTransactions,
                            groupBy: (element) {
                              final inputDateFormat = DateFormat('dd/MM/yyyy');
                              final formattedDate = inputDateFormat.format(
                                element.date,
                              );
                              return formattedDate;
                            },
                            groupComparator: (value1, value2) =>
                                value2.compareTo(value1),
                            groupSeparatorBuilder: (String value) {
                              final inputDateFormat = DateFormat('dd/MM/yyyy');
                              final date = inputDateFormat.parse(value);
                              final title = SMobillsDateFormatter.formatDate(
                                context: context,
                                date: date,
                              );

                              return TransactionSectionTitle(title: title);
                            },
                            itemBuilder: (_, element) {
                              return InkWell(
                                onTap: () => context
                                    .read<TransactionsCubit>()
                                    .editTransaction(transaction: element),
                                child: TransactionItem(
                                  isExpense:
                                      element.type == TransactionType.expense,
                                  isDone: element.done,
                                  name: element.category.displayName,
                                  description: element.description,
                                  value: element.value.formatted,
                                  date: element.date,
                                  accountName: element.accountName,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          floatingActionButtonLocation: ExpandableFab.location,
          floatingActionButton: ExpandableFab(
            key: context.read<TransactionsCubit>().floatingButtonKey,
            openButtonBuilder: RotateFloatingActionButtonBuilder(
              child: const Icon(Icons.add),
              shape: const CircleBorder(),
            ),
            closeButtonBuilder: RotateFloatingActionButtonBuilder(
              child: const Icon(Icons.close),
              shape: const CircleBorder(),
            ),
            children: [
              Column(
                spacing: 5,
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: const Color(0xFF059669),
                    onPressed: () => context
                        .read<TransactionsCubit>()
                        .addTransaction(type: TransactionType.income),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.north_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Receita',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 5,
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: const Color(0xFFDC2626),
                    onPressed: () => context
                        .read<TransactionsCubit>()
                        .addTransaction(type: TransactionType.expense),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.south_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Despesa',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showFilterModal(BuildContext context, TransactionsState state) {
    final cubit = context.read<TransactionsCubit>();
    showModalBottomSheet<TransactionFilterResult>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => TransactionFilterModal(
        initialStartDate: state.filterStartDate,
        initialEndDate: state.filterEndDate,
        initialType: state.filterType,
      ),
    ).then((result) {
      if (result != null) {
        cubit.applyFilter(
          startDate: result.startDate,
          endDate: result.endDate,
          type: result.type,
        );
      }
    });
  }
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({required this.hasActiveFilter, required this.onTap});

  final bool hasActiveFilter;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: hasActiveFilter
              ? context.colorScheme.primary.withValues(alpha: 0.1)
              : null,
          border: Border.all(
            color: hasActiveFilter
                ? context.colorScheme.primary
                : Colors.grey[500]!,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              hasActiveFilter ? Icons.filter_alt : Icons.filter_alt_outlined,
              size: 20,
              color: hasActiveFilter
                  ? context.colorScheme.primary
                  : Colors.grey[600],
            ),
            const SizedBox(width: 4),
            Text(
              'Filtrar',
              style: SMobillsTextStyles.body2.copyWith(
                color: hasActiveFilter
                    ? context.colorScheme.primary
                    : Colors.grey[600],
                fontSize: 16,
                fontWeight: hasActiveFilter ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
