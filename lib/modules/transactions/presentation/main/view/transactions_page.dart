import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:get_it/get_it.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/transactions/module.dart';
import 'package:s_mobills/ui/ui.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TransactionsCubit(
        getTransactionsPeriodUseCase: GetIt.I<GetTransactionsPeriodUseCase>(),
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
            customPreferredSize: const Size.fromHeight(170),
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
                : Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GroupedListView<dynamic, String>(
                      elements: state.transactions,
                      groupBy: (element) {
                        final date = element.date as DateTime;
                        final inputDateFormat = DateFormat('dd/MM/yyyy');
                        final formattedDate = inputDateFormat.format(date);
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
                        final transaction = element as Transaction;
                        return InkWell(
                          onTap: () => context
                              .read<TransactionsCubit>()
                              .editTransaction(transaction: transaction),
                          child: TransactionItem(
                            isExpense:
                                transaction.type == TransactionType.expense,
                            isDone: transaction.done,
                            name: transaction.category.displayName,
                            description: transaction.description,
                            value: transaction.value.formatted,
                          ),
                        );
                      },
                    ),
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
}
