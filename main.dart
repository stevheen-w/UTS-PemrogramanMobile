import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Biodata Pribadi"),
        backgroundColor: Colors.blueAccent[700],
      ),
      backgroundColor: Colors.blueAccent[100],

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Stevheen Wirawan", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),),
              accountEmail: new Text("stevheen.w@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/61KtS7MJZ2L._SL1001_.jpg"),
              ),
              decoration: new BoxDecoration(color: Colors.blueAccent[700]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Akun"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            ),
          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
              title: "Alamat",
              icon: Icons.home,
              warna: Colors.grey,
            ),
            MyMenu(
              title: "Data Pribadi",
              icon: Icons.perm_identity,
              warna: Colors.blue,
            ),
            MyMenu(
              title: "Pendidikan",
              icon: Icons.school,
              warna: Colors.purple,
            ),
            MyMenu(
              title: "Contact Person",
              icon: Icons.smartphone,
              warna: Colors.orange,
            ),
            MyMenu(
              title: "Galeri",
              icon: Icons.photo_library,
              warna: Colors.red,
            ),
            MyMenu(
              title: "Book/Novel",
              icon: Icons.library_books,
              warna: Colors.teal,
            ),
            MyMenu(
              title: "Maps",
              icon: Icons.public,
              warna: Colors.lightGreen,
            ),
            MyMenu(
              title: "Hobby",
              icon: Icons.directions_bike,
              warna: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
