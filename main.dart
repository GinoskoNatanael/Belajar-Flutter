import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar mytabbar = TabBar(
      
        labelStyle:
            TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelColor: Colors.black,
        labelColor: Colors.deepPurple,
        indicatorWeight: 3,
        indicatorColor: Colors.deepPurple,
        isScrollable: true,
        tabs: [
          Tab(
            text: "PENGANTAR",
          ),
          Tab(text: "BUKU"),
          Tab(text: "INDEKS"),
          Tab(text: "LAMPIRAN A"),
          Tab(text: "LAMPIRAN B"),
          Tab(text: "LAMPIRAN C"),
        ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.grey[400],
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.deepPurple,
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark),
                color: Colors.deepPurple,
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.deepPurple,
                iconSize: 30,
              ),
            ],
            backgroundColor: Colors.grey,
            title: Text(
              "Alkitab Edisi Pelajaran",
              style: TextStyle(color: Colors.black),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(mytabbar.preferredSize.height),
                child: Container(color: Colors.white, child: mytabbar)),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("INI PAGE BUKU"),
              ),
              Center(
                child: Text("INI PAGE BUKU"),
              ),
              Center(
                child: Text("INI PAGE ALKITAB"),
              ),
              Center(
                child: Text("INI PAGE BUKU"),
              ),
              Center(
                child: Text("INI PAGE ALKITAB"),
              ),
              Center(
                child: Text("INI PAGE BUKU"),
              ),
            ],
          ),
        
        ),
      ),
    );
  }
}
