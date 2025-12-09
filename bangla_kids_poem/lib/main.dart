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
      home:HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
    const HomeActivity({super.key});

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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsetsGeometry.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                accountName: Text("Manan",  style: TextStyle(color: Colors.blue),),
                accountEmail: Text("Email", style: TextStyle(color: Colors.blue),),
                currentAccountPicture: Image.network("https://scontent-sin2-2.xx.fbcdn.net/v/t39.30808-6/453014603_122141494382264015_394986228119248179_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=8qCNOvza7zgQ7kNvwGY0BNC&_nc_oc=AdkzVfxHK73Tim7W7sU5moJ9UGMnxa1VjqD-0Rs_Z21F_qMTzrwJE1aVei4Wj2ktiLcbr2MFPGMmCdphUWfzmCtA&_nc_zt=23&_nc_ht=scontent-sin2-2.xx&_nc_gid=fT3QsUPdPNwn-PFJoyAdZA&oh=00_AfmtuqvaeQ2u6qcqLqxIf1mXqAaz7_rv8zBg-K1KWmOVoA&oe=693B3685"),
              ),
            ),
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
      ),
      body: 
      // Container(
      //   height: 200,
      //   width: 250,
      //   alignment: Alignment.center,
      //   decoration: BoxDecoration(
      //     color: Colors.blue
      //   ),
      //   child: Text("Manan"),
      // ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){}, child: Text('data')),
          ElevatedButton(onPressed: (){}, child: Text("Button"))
      ],),

    );
  }
}