import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListTile',
      home: BuildListTile(),
    );
  }
}

class BuildListTile extends StatelessWidget {
  const BuildListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Build ListTile')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          const ListTile(title: Text('Tile : Basic')),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.face),
            title: Text('Tile 1: With leading/trailing widgets'),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.tag_faces)),
          ),
          const Divider(),
          const ListTile(
              title: Text('Tile 2 title'), subtitle: Text('Subtile of tile 2')),
          const Divider(),
          const ListTile(
              title: Text('Tile 3: 3 lines'),
              subtitle: Text(
                'Subtile of tile 3  ',
                maxLines: 3,
              ),
              isThreeLine: true),
          const Divider(),
          const ListTile(
            title: Text('Tile 4 title'),
            dense: true,
          ),
          const Divider(),
          ListTile(
            title: const Text('Tile 5: title with badge'),
            subtitle: const Text('This uses the badges package'),
            trailing: Badge(
              badgeContent: const Text('3'),
              child: const Icon(Icons.message),
            ),
          ),
        ],
      ),
    );
  }
}
