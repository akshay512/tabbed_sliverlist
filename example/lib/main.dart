import 'package:flutter/material.dart';
import 'package:tabbed_sliverlist/tabbed_sliverlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  var listitems = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
    'item7',
    'item8',
    'item9',
    'item10',
    'item11',
    'item12',
    'item13',
    'item14',
    'item15',
    'item16',
    'item18',
    'item19',
    'item20'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabbedList(
          tabLength: 3,
          sliverTabBar: const SliverTabBar(
              title: Text('Tabbed SliverList'),
              centerTitle: true,
              tabBar: TabBar(
                tabs: [
                  Tab(
                    text: 'tab1',
                  ),
                  Tab(
                    text: 'tab2',
                  ),
                  Tab(
                    text: 'tab3',
                  )
                ],
              )),
          tabLists: [
            TabListBuilder(
              uniquePageKey: 'page1',
              length: listitems.length,
              builder: (BuildContext context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Text(listitems[index].toString()),
                      tileColor: Colors.white,
                    ));
              },
              tabListPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            TabListBuilder(
              uniquePageKey: 'page2',
              length: listitems.length,
              builder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Text(listitems[index].toString()),
                      tileColor: Colors.white,
                    ));
              },
              tabListPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            TabListBuilder(
              uniquePageKey: 'page3',
              length: listitems.length,
              builder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Text(listitems[index].toString()),
                      tileColor: Colors.white,
                    ));
              },
              tabListPadding: const EdgeInsets.symmetric(horizontal: 10),
            )
          ]),
    );
  }
}
