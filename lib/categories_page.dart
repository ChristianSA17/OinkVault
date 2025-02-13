import 'package:flutter/material.dart';
import 'package:oinkvault/bottom_menu_bar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('EXPENSES'),
              ),
              Tab(
                child: Text('INCOME'),
              ),
            ],
          ),
          title: const Text('Categories'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: BottomMenuBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
