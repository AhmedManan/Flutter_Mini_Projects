import 'package:flutter/material.dart';

main(){
  runApp(MyApp()); // Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp (
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home:homeActivity());
  }
}

class homeActivity extends StatelessWidget{
    const homeActivity({super.key});

    mySnackBar(message, context)
    {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
      );
    }
  @override
  Widget build(BuildContext context){
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangla Kids Poem'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(101, 155, 39, 176),
        toolbarHeight: 100,
        actions: [
          IconButton(onPressed: (){mySnackBar("message", context);}, icon: Icon(Icons.info))
        ],

      ),
      body: Text('Manan'),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Manan')),
            ListTile(leading: Icon(Icons.account_box_outlined), title: Text('data'),),
            ListTile(leading: Icon(Icons.account_box_outlined),title: Text('bangla'),)
          ],
        )
      ),
      // endDrawer: ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms_sharp), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility_rounded), label: 'home')
        ]
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 5,
        child: Icon(Icons.info)
      )
    );
  }
}