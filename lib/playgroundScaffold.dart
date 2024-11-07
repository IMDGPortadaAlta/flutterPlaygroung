import 'package:flutter/material.dart';

class PlaygroundScaffold extends StatefulWidget {
  const PlaygroundScaffold({super.key});

  @override
  State<StatefulWidget> createState() => _stateScaffold();
}

class _stateScaffold extends State<PlaygroundScaffold> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: AppBar(
        title: const Text("mainAppBar"),
        actions: [
          Builder(builder: (context) {
            return IconButton(onPressed: (){
              TabController controller = DefaultTabController.of(context);
              controller.animateTo(1);
            }, icon: Icon(Icons.info));
          })
        ],
      ),
      body: const TabBarView(children: <Widget> [
        Expanded(child: Text("Contact Data List"),),
        Expanded(child: Text("Favorite List"))
      ]),
      bottomNavigationBar: const TabBar(tabs: <Widget>[
          Tab(icon: Icon(Icons.contacts_sharp), text: "Contactos"),
          Tab(icon: Icon(Icons.star), text: "Favoritos"),
        ],),
    )
    );
  }
}
