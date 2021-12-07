import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _helloPageState extends State<helloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text('instargram',
            style: TextStyle(color:Colors.black,fontStyle: FontStyle.italic)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'dja',
            onPressed: () {},
          )
        ],

      ),

      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                              radius: 40,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 80,
                            width: 80,
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "박경환",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                              radius: 40,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 80,
                            width: 80,
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "박경환",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                              radius: 40,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 80,
                            width: 80,
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "박경환",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                              radius: 40,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 80,
                            width: 80,
                            child: SizedBox(
                              width: 40,
                              height: 40,

                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "박경환",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                              radius: 40,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 80,
                            width: 80,
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "박경환",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                              radius: 40,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 80,
                            width: 80,
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "박경환",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
                  radius: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text('Id'), Text('아아')],
                  ),
                ),
              ],
            ),
          ),
          Image.network(
              'https://w.namu.la/s/69e022275d62e3352d39ad1fd31409efcb15e4c04351b1e762a67ba81d2958980243de23a759e4b306a78f327173139f61cb10fe8f5034187b670470df724252493fa41600b2a0c7a34503a00be075fd'),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite),
                Icon(Icons.feedback),
                Icon(Icons.label_important),
              ],
            ),

            Icon(Icons.bookmarks)
          ],
        ),
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('아이디123455566464646464646466'),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('내용12318273890127398dddddd'),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('asdf',style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '',
          ),
        ],
      ),
    );
  }
}

class helloPage extends StatefulWidget {
  @override
  _helloPageState createState() => _helloPageState();
}
