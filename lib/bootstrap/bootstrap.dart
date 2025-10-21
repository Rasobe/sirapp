import 'dart:async';

void bootstrap(FutureOr<void> Function() run) {
  runZonedGuarded(() async {
    await run();
  }, (error, stack) {
    // TODO: Add error reporting (e.g., Sentry/Firebase Crashlytics)
  });
}
