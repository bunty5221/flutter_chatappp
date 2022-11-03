import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),

    
  ];
@override
  void initState() {
_tabController = TabController(length: 4, initialIndex: 1, vsync: this)
..addListener(() {
  setState(() {
    
  });
  
});    
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        
        ],
          
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          tabs: topTabs,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text('camera'),
            ChatPage(),
            Text('Status'),
          Text('Calls'),
        ],
      ), 
    );
  }
}
