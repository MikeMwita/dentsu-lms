import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardRepositoryProvider = Provider(
  (ref) => DashboardRepository(
    baseUrl:
        'https://find-it-247007-default-rtdb.europe-west1.firebasedatabase.app',
  ),
);

class DashboardRepository {
  DashboardRepository({required this.baseUrl});
  final String baseUrl;
}
