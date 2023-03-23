import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/gen/assets.gen.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'your notes',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: TextButton(
          onPressed: () {
            context.read<AuthBloc>().add(const SignOutEvent());
          },
          child: Assets.images.exit.image(color: AppColors.appBlue),
        ),
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.indeterminate_check_box,
              color: AppColors.appBlue,
              size: 28,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [Text('notes overview')],
          ),
        ),
      ),
    );
  }
}
