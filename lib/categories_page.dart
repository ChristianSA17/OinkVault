import 'package:flutter/material.dart';

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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
    );
  }
}
