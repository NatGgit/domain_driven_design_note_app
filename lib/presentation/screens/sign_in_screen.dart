import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:domain_driven_design_note_app/domain/services/validation_helper.dart';
import 'package:domain_driven_design_note_app/generated/assets.gen.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, authState) {
        if (authState.authFailure != null) {
          AppDialogs.showErrorDialog(
            context: context,
            message: authState.authFailure!.message,
          );
        } else if (!authState.isSubmitting) {
          AutoRouter.of(context).push(const DashboardRoute());
          context.read<AuthBloc>().add(const AuthEvent.authCheckRequest());
        }
      },
      builder: (context, authState) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.bottom -
                      32,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        S.current.note_app.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Expanded(
                        child: Assets.images.mainIllustration.image(),
                      ),
                      BlocProvider<SignInFormCubit>(
                        create: (context) => SignInFormCubit(),
                        child: BlocBuilder<SignInFormCubit, SignInFormState>(
                          builder: (context, signInFormState) {
                            return Form(
                              key: formKey,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    TextFormField(
                                      onChanged: (newValue) {
                                        context
                                            .read<SignInFormCubit>()
                                            .setEmail(email: newValue);
                                      },
                                      validator: (newValue) {
                                        return ValidationHelper.validateEmail(
                                            newValue!);
                                      },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        labelText: S.current.email,
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                        prefixIcon: const Icon(
                                          Icons.face,
                                          color: AppColors.appBlue,
                                        ),
                                      ),
                                      autocorrect: false,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    TextFormField(
                                      onChanged: (newValue) {
                                        context
                                            .read<SignInFormCubit>()
                                            .setPassword(password: newValue);
                                      },
                                      validator: (newValue) {
                                        return ValidationHelper
                                            .validatePassword(newValue!);
                                      },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        labelText: S.current.password,
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                        prefixIcon: const Icon(
                                          Icons.lock_outline,
                                          color: AppColors.appBlue,
                                        ),
                                      ),
                                      obscureText: true,
                                      obscuringCharacter: '*',
                                      autocorrect: false,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: OutlinedButton(
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                context.read<AuthBloc>().add(
                                                    AuthEvent.signInWithEmail(
                                                        signInFormState:
                                                            signInFormState));
                                              }
                                            },
                                            child: Text(S.current.sign_in
                                                .toUpperCase()),
                                          ),
                                        ),
                                        Expanded(
                                          child: FilledButton(
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                context.read<AuthBloc>().add(
                                                    AuthEvent.registerWithEmail(
                                                        signInFormState:
                                                            signInFormState));
                                              }
                                            },
                                            child: Text(S.current.register
                                                .toUpperCase()),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        context.read<AuthBloc>().add(
                                            const AuthEvent.signInWithGoogle());
                                      },
                                      child: Text(S.current.google_sign_in
                                          .toUpperCase()),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    authState.isSubmitting
                                        ? const LinearProgressIndicator(
                                            color: AppColors.appBlue,
                                            value: null,
                                            minHeight: 25,
                                          )
                                        : const SizedBox(
                                            height: 25,
                                          ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
