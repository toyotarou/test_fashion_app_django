import 'package:cross_connectivity/cross_connectivity.dart';

import 'package:flutter/material.dart';
import 'package:test_fashion_app_django/common/widgets/offline_page.dart';

class SensitiveContainer extends StatelessWidget {
  const SensitiveContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConnectivityBuilder(builder: (context, isConnected, status) {
      if (isConnected == true) {
        return child;
      }

      return const OfflinePage();
    });
  }
}
