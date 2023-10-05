import 'package:flutter/material.dart';
import 'package:flutter_mvvm_structure/1_presentation_layer/home/home_screen.view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer(
            builder: (context, ref, child) {
              var viewModel = ref.watch(homeScreenProvider);
              return viewModel.when(
                data: (data) {
                  return Center(child: Text(data));
                },
                error: (error, stackTrace) => const Center(child: Text('오류')),
                loading: () => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
