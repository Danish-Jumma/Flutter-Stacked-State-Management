import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/home_viewmodel.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(),
            body: const Text('welcome to home view'),
          );
        });
  }
}
