import 'package:satcked/App/app.locator.dart';
import 'package:satcked/App/app.router.dart';
import 'package:satcked/Service/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final counterService = locator<CounterServices>();
  final navigationService = locator<NavigationService>();
  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  getValue() {
    return counterService.getCounterValue();
  }

  goToHome() {
    navigationService.navigateToHomeView();
  }
}
