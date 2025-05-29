import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0.2,
        title: Text("Bejarano Guadalupe"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 236, 204, 255),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 168, 101, 255),
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 168, 101, 255),
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(


        child: ListView(
          children: [
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 245, 135, 255)),
              accountName: Text("Rogelio Bejarano 1154", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
              accountEmail: Text("a.22308051281154@cbtis128.edu.mx", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15)),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                   radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/GaelRogelioBejaranoD/Imagenes_FlutterFlow/refs/heads/main/Bob.png'),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 209, 30, 233)),
                title: Text("Home Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}