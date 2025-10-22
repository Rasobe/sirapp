import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hexagonal_architecture_template/src/presentation/state/index.dart';
import 'package:hexagonal_architecture_template/src/presentation/widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(appThemeProvider);
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Raúl y Silvia'))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenidos a Raúl y Silvia',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),
            const StreakCard(),
          ],
        ),
      ),
    );
  }
}
