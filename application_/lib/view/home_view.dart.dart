import 'package:application_/components/card_component.dart';
import 'package:application_/components/image_component.dart';
import 'package:application_/controller/dart_controller.dart';
import 'package:application_/utils/colors.dart';
import 'package:application_/utils/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viweModel = ref.watch(getDatatUser);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            aVSpace32,
            const ImageComponent(),
            aVSpace25,
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: viweModel.listDataUserModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardComponent(
                    id: viweModel.listDataUserModel[index].id,
                    name: viweModel.listDataUserModel[index].userName,
                    email: viweModel.listDataUserModel[index].userEmail,
                 phone: viweModel.listDataUserModel[index].userPhone,
                  );
                },
              ),
            )),
            aVSpace10,
          ],
        ),
      ),
    );
  }
}
