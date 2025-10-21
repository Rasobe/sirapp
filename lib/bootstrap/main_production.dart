import 'package:flutter/widgets.dart';
import 'package:hexagonal_architecture_template/main.dart';
import 'bootstrap.dart';

Future<void> main() async {
  bootstrap(() async {
    runApp(const MainApp());
  });
}
