import 'package:application_/controller/dart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final viweModel = ref.watch(getDatat);

    return Scaffold(
    );
  }
}
