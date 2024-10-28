import 'package:aplications/screens/repository_tile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const Home(),
    );
  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/conejo.jpg'), // Ruta de tu imagen en assets
              ),
              title: Text('El papu:'),
              subtitle: Text('Jorge Brandon Chandomi Esponda'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/photo.jpg'), // Ruta de tu imagen en assets
              ),
              title: Text('Universidad:'),
              subtitle: Text('Universidad politecnica de chiapas'),
            ),
            Text(
              'Repository',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            RepositoryTile(
              text: 'Personal:',
              link: 'https://github.com/JBunCE',
            ),
          ],
        ),
      ),
    );
  }
}
