import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:domain_driven_design_note_app/domain/services/validation_helper.dart';
import 'package:domain_driven_design_note_app/gen/assets.gen.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                      'note app'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Expanded(
                      child: Assets.images.mainIllustration.image(),
                    ),
                    BlocConsumer<SignInFormBloc, SignInFormState>(
                      listener: (context, signInState) {
                        if (signInState.authFailure != null) {
                          AppDialogs.showErrorDialog(
                            context: context,
                            message: signInState.authFailure!.message,
                          );
                        } else if (!signInState.isSubmitting) {
                          AutoRouter.of(context).push(const DashboardRoute());
                          context
                              .read<AuthBloc>()
                              .add(const AuthCheckRequest());
                        }
                      },
                      builder: (context, state) => Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                onChanged: (newValue) {
                                  context
                                      .read<SignInFormBloc>()
                                      .add(EmailChangedEvent(newValue));
                                },
                                validator: (newValue) {
                                  return ValidationHelper.validateEmail(
                                      newValue!);
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  labelText: 'email',
                                  prefixIcon: Icon(
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
                                      .read<SignInFormBloc>()
                                      .add(PasswordChangedEvent(newValue));
                                },
                                validator: (newValue) {
                                  return ValidationHelper.validatePassword(
                                      newValue!);
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  labelText: 'password',
                                  prefixIcon: Icon(
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: OutlinedButton(
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          context.read<SignInFormBloc>().add(
                                              const SignInFormEvent
                                                  .signInWithEmail());
                                        }
                                      },
                                      child: Text('Sign in'.toUpperCase()),
                                    ),
                                  ),
                                  Expanded(
                                    child: FilledButton(
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          context.read<SignInFormBloc>().add(
                                              const SignInFormEvent
                                                  .registerWithEmail());
                                        }
                                      },
                                      child: Text('Register'.toUpperCase()),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<SignInFormBloc>().add(
                                      const SignInFormEvent.signInWithGoogle());
                                },
                                child:
                                    Text('Sign in with Google'.toUpperCase()),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              state.isSubmitting
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
    );
  }
}
