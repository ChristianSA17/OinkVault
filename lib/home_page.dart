import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 26, 26, 26),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              )
            ],
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/img/piggyvault.png'),
              titlePadding: EdgeInsets.only(left: 20, bottom: 8),
              title: Text('February',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 51, 51, 51),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Income'),
                      Text('400.00'),
                    ],
                  )),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Expenses'),
                      Text('-80.00'),
                    ],
                  )),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Balance'),
                        Text('320.00'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: const Divider(
              thickness: 1,
              indent: 60,
              endIndent: 60,
              color: Colors.grey,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 51, 51, 51),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 51, 51, 51),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 51, 51, 51),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFE1CFB9),
        foregroundColor: Color.fromARGB(255, 97, 82, 63),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
