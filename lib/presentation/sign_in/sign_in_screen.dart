import 'package:domain_driven_design_note_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:domain_driven_design_note_app/gen/assets.gen.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                listener: (context, state) {},
                builder: (context, state) => Form(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shrinkWrap: true,
                    children: [
                      TextFormField(
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
                              onPressed: () {},
                              child: Text('Sign in'.toUpperCase()),
                            ),
                          ),
                          Expanded(
                            child: FilledButton(
                              onPressed: () {},
                              child: Text('Register'.toUpperCase()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign in with Google'.toUpperCase()),
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
