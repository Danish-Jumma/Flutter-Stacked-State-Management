import 'package:satcked/Service/counter_service.dart';
import 'package:satcked/Views/counter_view.dart';
import 'package:satcked/Views/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView, initial: true),
  MaterialRoute(page: HomeView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterServices),
])
class App {}
