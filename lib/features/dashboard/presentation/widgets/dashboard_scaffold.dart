import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DasboardScaffold extends StatelessWidget {
  const DasboardScaffold({
    super.key,
    required this.state,
    required this.child,
  });
  final GoRouterState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final path = state.uri.path;

    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'To Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.run_circle_rounded),
            label: 'In Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all_rounded),
            label: 'Finished',
          ),
        ],
      ),
    );
  }
}
