import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hexagonal_architecture_template/src/presentation/state/index.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(appThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButton<AppTheme>(
              value: current,
              underline: const SizedBox.shrink(),
              onChanged: (value) {
                if (value != null) {
                  ref.read(appThemeProvider.notifier).setTheme(value);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: AppTheme.light,
                  child: Text('Light'),
                ),
                DropdownMenuItem(
                  value: AppTheme.dark,
                  child: Text('Dark'),
                ),
                DropdownMenuItem(
                  value: AppTheme.red,
                  child: Text('Red'),
                ),
              ],
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Welcome to Home!'),
      ),
    );
  }
}
