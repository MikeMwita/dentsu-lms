import 'package:dentsu_app/features/auth/layouts/login_layout.dart';
import 'package:dentsu_app/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:dentsu_app/features/dashboard/layouts/dashboard_layout.dart';
import 'package:dentsu_app/features/dashboard/views/mobile/leads_details.dart';
import 'package:dentsu_app/features/dashboard/views/mobile/profile.dart';
import 'package:dentsu_app/features/dashboard/views/mobile/quote.dart';
import 'package:dentsu_app/features/dashboard/views/mobile/quote_details.dart';
import 'package:dentsu_app/features/dashboard/views/mobile_dashboard_screen.dart';
import 'package:dentsu_app/features/dashboard/views/mobile/leads.dart';
import 'package:dentsulms/features/dashboard/views/mobile_home.dart';
import 'package:flutter/material.dart';
import 'package:dentsu_app/features/dashboard/views/dashboard_mainarea_view.dart';
import 'package:dentsu_app/features/dashboard/views/desktop_dashboard_screen.dart';
import 'package:dentsu_app/features/dashboard/views/desktop_lead_view.dart';
import 'package:dentsu_app/features/dashboard/views/desktop_leads_view.dart';
import 'package:dentsu_app/features/dashboard/views/mobile/leads.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/lead.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final dasboardShellNavigatorKey = GlobalKey<NavigatorState>();
final dasboardMobileShellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name:
          'login', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => const LoginLayout(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // Return the widget that implements the custom shell (e.g a BottomNavigationBar).
        // The [StatefulNavigationShell] is passed to be able to navigate to other branches in a stateful way.
        return DesktopDashboardView(
          navigationShell: navigationShell,
        );
      },
      branches: [
        // The route branch for the 1º Tab
        StatefulShellBranch(
          navigatorKey: dasboardShellNavigatorKey,
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              name: 'dashboard',
              path: '/dashboard',
              builder: (context, state) => const DashboardMainarea(),
              routes: <RouteBase>[
                GoRoute(
                    name: 'leads',
                    path: 'leads',
                    builder: (context, state) {
                      return const DesktopLeadsView();
                    },
                    routes: <RouteBase>[
                      GoRoute(
                        name: 'details',
                        path: 'details',
                        builder: (context, state) {
                          final id = state.pathParameters['id'];
                          final name = state.pathParameters['name'];
                          final email = state.pathParameters['email'];
                          return const DesktopLeadView();
                        },
                      )
                    ])
              ],
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // Return the widget that implements the custom shell (e.g a BottomNavigationBar).
        // The [StatefulNavigationShell] is passed to be able to navigate to other branches in a stateful way.
        return MobileDashboardScreen(
          navigationShell: navigationShell,
        );
      },
      branches: [
        // The route branch for the 1º Tab
        StatefulShellBranch(
          navigatorKey: dasboardShellNavigatorKey,
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              name: 'dashboard_mobile',
              path: '/dashboard_mobile',
              builder: (context, state) => const MobileHome(),
            ),
          ],
        ),
        StatefulShellBranch(
          // navigatorKey: dasboardMobileShellNavigatorKey,
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              name: 'lead_mobile',
              path: '/leads_mobile',
              builder: (context, state) => const Leads(),
              routes: <RouteBase>[
                GoRoute(
                  name: 'leads_details',
                  path: 'leads_details',
                  builder: (context, state) {
                    final Lead data = state.extra! as Lead;
                    return LeadsDetails(person: data);
                  },
                )
              ],
            ),
          ],
        ),

        StatefulShellBranch(
          // navigatorKey: dasboardMobileShellNavigatorKey,
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              name: 'quotes',
              path: '/quotes_mobile',
              builder: (context, state) => const Quote(),
              routes: <RouteBase>[
                GoRoute(
                  name: 'quote_details',
                  path: 'quote_details',
                  builder: (context, state) {
                    final Lead data = state.extra as Lead;

                    return QuoteDetails(lead: data);
                  },
                )
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              name: 'profile_mobile',
              path: '/profile_mobile',
              builder: (context, state) => const Profile(),
            ),
          ],
        ),
      ],
    ),
  ],
);
