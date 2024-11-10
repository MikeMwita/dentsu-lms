import 'package:dentsulms/features/dashboard/repository/dashboard_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardControllerProvider = Provider((ref) {
  final dashboardRepository = ref.watch(dashboardRepositoryProvider);
  return DashboardController(
      dashboardRepository: dashboardRepository, ref: ref);
});

class DashboardController {
  final DashboardRepository dashboardRepository;
  final ProviderRef ref;
  DashboardController({
    required this.dashboardRepository,
    required this.ref,
  });
}
