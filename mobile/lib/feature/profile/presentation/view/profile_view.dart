// ignore_for_file: unnecessary_lambdas

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app/bloc/app_bloc.dart';
import 'package:mobile/core/extensions/context_extensions.dart';
import 'package:mobile/feature/profile/presentation/bloc/bloc/profile_bloc.dart';
import 'package:mobile/locator.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile View',
        ),
        actions: [
          IconButton(
            onPressed: () => context.read<AppBloc>().add(const AppEvent.logout()),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<ProfileBloc>()..add(const ProfileEvent.fetchProfile()),
        child: const _ProfileViewBody(),
      ),
    );
  }
}

class _ProfileViewBody extends StatelessWidget {
  const _ProfileViewBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.when(
                initial: SizedBox.shrink,
                loading: CircularProgressIndicator.adaptive,
                success: (user) => Column(
                  children: [
                    Text(
                      'User ID: ${user.userId}',
                      style: context.textTheme.bodyLarge,
                    ),
                    Text(
                      'Email: ${user.email}',
                      style: context.textTheme.bodyLarge,
                    ),
                    Text(
                      'Encrypted Password: ${user.password}',
                      style: context.textTheme.bodyLarge,
                    ),
                  ],
                ),
                failure: (message) => Text(message),
              );
            },
          ),
        ],
      ),
    );
  }
}
