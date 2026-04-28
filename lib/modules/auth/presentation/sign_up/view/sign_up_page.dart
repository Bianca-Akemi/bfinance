import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:s_mobills/l10n/l10n.dart';
import 'package:s_mobills/modules/auth/module.dart';
import 'package:s_mobills/ui/ui.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          SignUpCubit(doCreateUserUseCase: GetIt.I<DoCreateUserUseCase>()),
      child: const SignUpView(),
    );
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const AuthHeader(isShowLogo: false),
                  AuthContainer(
                    height: 0.8,
                    marginTop: 0.2,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(80),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          'Criar nova conta',
                          textAlign: TextAlign.center,
                          style: SMobillsTextStyles.h4.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary,
                          ),
                        ),
                        SizedBox(
                          height: context.mediaQuery.size.height * 0.025,
                        ),
                        SMobillsTextField(
                          title: context.l10n.name,
                          controller: context
                              .read<SignUpCubit>()
                              .nameTextEditingController,
                          hintText: 'Digite seu nome ou apelido',
                          keyboardType: TextInputType.name,
                        ),
                        SMobillsTextField(
                          title: context.l10n.email,
                          controller: context
                              .read<SignUpCubit>()
                              .emailTextEditingController,
                          hintText: 'Digite seu melhor e-mail',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SMobillsTextField(
                          title: context.l10n.password,
                          hintText: 'Digite sua melhor senha',
                          controller: context
                              .read<SignUpCubit>()
                              .passwordTextEditingController,
                          obscureText: true,
                        ),
                        SizedBox(height: context.mediaQuery.size.height * 0.05),
                        SMobillsButton(
                          title: 'Salvar',
                          onPressed: context.read<SignUpCubit>().createAccount,
                          isLoading: state.isLoading,
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
