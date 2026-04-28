import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/auth/domain/usecase/do_login_use_case.dart';
import 'package:s_mobills/modules/auth/presentation/login/cubit/login_cubit.dart';
import 'package:s_mobills/modules/auth/presentation/widgets/widgets.dart';
import 'package:s_mobills/ui/ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(doLoginUseCase: GetIt.I<DoLoginUseCase>()),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Scaffold(
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const AuthHeader(),
                  AuthContainer(
                    height: 0.65,
                    marginTop: 0.38,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(80),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          context.l10n.login,
                          textAlign: TextAlign.center,
                          style: SMobillsTextStyles.h3.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary,
                          ),
                        ),
                        SMobillsTextField(
                          title: context.l10n.email,
                          controller: context
                              .read<LoginCubit>()
                              .emailTextEditingController,
                          hintText: 'Digite seu e-mail',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SMobillsTextField(
                          title: context.l10n.password,
                          controller: context
                              .read<LoginCubit>()
                              .passwordTextEditingController,
                          hintText: 'Digite sua senha',
                          obscureText: true,
                        ),
                        SizedBox(height: context.mediaQuery.size.height * 0.02),
                        SMobillsButton(
                          title: 'Entrar',
                          onPressed: context.read<LoginCubit>().login,
                          isLoading: state.isLoading,
                        ),
                        SizedBox(height: context.mediaQuery.size.height * 0.05),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              context.l10n.dontHaveAccount,
                              textAlign: TextAlign.center,
                              style: SMobillsTextStyles.body1.copyWith(
                                color: context.colorScheme.onSurface.withValues(
                                  alpha: 0.7,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: context.read<LoginCubit>().signUp,
                              child: Text(
                                context.l10n.signUp,
                                textAlign: TextAlign.center,
                                style: SMobillsTextStyles.button.copyWith(
                                  color: context.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
}
