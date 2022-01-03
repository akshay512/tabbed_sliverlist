# tabbed_sliverlist

A package to simplify initialization of TabBar with ListView builder implemented using sliverappbar and sliverlist. Scroll position can be maintained by different tabs by providing unique string to each tablist.

[![](https://img.shields.io/badge/dontate-Buy%20Me%20a%20Coffee-blueviolet)](https://www.buymeacoffee.com/5zeFDGT) &nbsp; 
[![LinkedIn](https://img.shields.io/badge/LinkedIn-in-0e76a8)](https://www.linkedin.com/in/akshay-a-s-037109134/) &nbsp; [![Get the library](https://img.shields.io/badge/Get%20library-pub-blue)](https://pub.dev/packages/tabbed_sliverlist) &nbsp; [![Example](https://img.shields.io/badge/Example-Ex-success)](https://pub.dev/packages/tabbed_sliverlist/example)



## Supported Dart Versions
**Dart SDK version >= >=2.15.1**


## Demo

<img src="https://raw.githubusercontent.com/akshay512/tabbed_sliverlist/master/example/sample/sample.gif" height="35%" width="35%"  alt="tabbed_sliverlist Demo"/>  


## Installation
[![Pub](https://img.shields.io/badge/pub-0.1.0-blue)](https://pub.dev/packages/tabbed_sliverlist)

Add the Package
```yaml
dependencies:
  tabbed_sliverlist: ^0.1.0
```

## How to use



Import the package in your dart file

```dart
import 'package:tabbed_sliverlist/tabbed_sliverlist.dart';
```
Wrap the widget inside Scaffold widget.
Below code is an example of how this plugin can be used
```dart
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  var listitems = [
    'item1','item2','item3','item4','item5','item6','item7','item8','item9','item10','item11','item12','item13','item14','item15','item16','item18','item19','item20'
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
                }),
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
                }),
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
                })
          ]),
    );
  }
}
```



```note
Note: 
You don't need to use all parameters, few of them are optional.
Make sure that tabLength matches number of Tab's and TabListBuilder's.

```





### Want to contribute? 
Pull requests and issues are always welcome!

#### How to contribute?
<ol>
  <li> Fork the <a href="https://github.com/akshay512/tabbed_sliverlist">repository</a></li>
  <li> Clone it to your local machine </li>
  <li> Open the project in your favourite editor </li>  
  <li> Open cmd/terminal and run <b>flutter clean</b> and then <b>flutter packages get</b> </li>
  <li> Make the changes </li>
  <li> Create a <b>Pull Request</b> </li>
</ol>

#### Future Improvements?
<ol>
  <li> Enable loading if the data is yet to be fetched.</li>
  <li> Register a callback when the tabbar is pressed to perform task like API call. </li>
  <li> Scroll notification to identify the position to where it is scrolled. </li>
</ol>

#### View the issues [here](https://github.com/akshay512/tabbed_sliverlist/issues)

#### This library is only tested for Android, iOS I expect it to work fine.