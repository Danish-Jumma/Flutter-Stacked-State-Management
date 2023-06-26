import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../view_model/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${viewModel.getValue()}",
                    style: const TextStyle(fontSize: 21),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: const Text('Add To Value')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.goToHome();
                      },
                      child: const Text('Go To Home'))
                ],
              ),
            ),
          );
        });
  }
}
