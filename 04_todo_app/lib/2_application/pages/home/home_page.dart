import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:todo_app/2_application/pages/dashboard/dashboard_page.dart';
import 'package:todo_app/2_application/pages/overview/overview_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  static var tabs = [
    DashboardPage.pageConfig,

    OverviewPage.pageConfig,

  ];

  @override
  State<HomePage> createState() => _HomePadeState();
}

class _HomePadeState extends State<HomePage> {
  final destinations = HomePage.tabs.map((Page) => NavigationDestination(icon: Icon(Page.icon), label: Page.name),).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: AdaptiveLayout(
        primaryNavigation: SlotLayout(config: <Breakpoint,SlotLayoutConfig>{
          Breakpoints.mediumAndUp: SlotLayout.from(key: const Key('primary-navigation-medium'),
          builder: (context) => AdaptiveScaffold.standardNavigationRail(destinations: destinations.map((element) => AdaptiveScaffold.toRailDestination(element),).toList()),),
        }),
        bottomNavigation: SlotLayout(config: <Breakpoint,SlotLayoutConfig>{
          Breakpoints.small:SlotLayout.from(key: const Key('bottom-navigation-small'),builder: (context) => AdaptiveScaffold.standardBottomNavigationBar(destinations: destinations)),
        }),
        body: SlotLayout(config: <Breakpoint,SlotLayoutConfig>{
          Breakpoints.smallAndUp:SlotLayout.from(key: const Key('primary-body'),builder: (context) => Placeholder()),
        }),
        secondaryBody: SlotLayout(config: <Breakpoint,SlotLayoutConfig>{
          Breakpoints.mediumAndUp:SlotLayout.from(key: const Key('secondary-body'),builder: (context) => Placeholder()),
        }),
      ),
      ),
    );
  }
}