import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hexagonal_architecture_template/src/presentation/theme/index.dart';

enum AppTheme { light, dark, red }

class AppThemeNotifier extends StateNotifier<AppTheme> {
  AppThemeNotifier() : super(AppTheme.light);

  void setTheme(AppTheme theme) => state = theme;
}

final appThemeProvider = StateNotifierProvider<AppThemeNotifier, AppTheme>((ref) {
  return AppThemeNotifier();
});

@immutable
class ResolvedTheme {
  final ThemeData theme;
  final ThemeData darkTheme;
  final ThemeMode mode;
  const ResolvedTheme({required this.theme, required this.darkTheme, required this.mode});
}

final resolvedThemeProvider = Provider<ResolvedTheme>((ref) {
  final current = ref.watch(appThemeProvider);
  final light = buildLightTheme();
  final dark = buildDarkTheme();
  final red = buildRedTheme();

  switch (current) {
    case AppTheme.light:
      return ResolvedTheme(theme: light, darkTheme: dark, mode: ThemeMode.light);
    case AppTheme.dark:
      return ResolvedTheme(theme: light, darkTheme: dark, mode: ThemeMode.dark);
    case AppTheme.red:
      return ResolvedTheme(theme: red, darkTheme: dark, mode: ThemeMode.light);
  }
});
