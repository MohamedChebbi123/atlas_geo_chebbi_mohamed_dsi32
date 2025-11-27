import 'package:flutter/material.dart';
import 'package:atlas_geochebbimohamed/models/Pays.dart';
import 'package:atlas_geochebbimohamed/pages/page_detail_pays.dart';
import 'package:atlas_geochebbimohamed/pages/page_acceuil.dart';
import 'package:flutter/services.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  final List<Pays> listePays = [
    Pays("France", "Paris", "67 millions", "643 801 km²", "Français"),
    Pays("Tunisie", "Tunis", "12 millions", "163 610 km²", "Arabe"),
    Pays("Brésil", "Brasília", "215 millions", "8 515 767 km²", "Portugais"),
    Pays("Italie", "Rome", "59 millions", "301 340 km²", "Italien"),
    Pays("Canada", "Ottawa", "39 millions", "9 984 670 km²", "Anglais"),
    Pays("Australie", "Canberra", "26 millions", "7 692 024 km²", "Anglais"),
    Pays("Allemagne", "Berlin", "84 millions", "357 022 km²", "Allemand"),
    Pays("Espagne", "Madrid", "47 millions", "505 990 km²", "Espagnol"),
    Pays("Afrique du Sud", "Pretoria", "60 millions", "1 219 090 km²", "Afrikaans"),
  ];


 
  final Map<String, String> drapeaux = {
    "France": "lib/assets/france-flag-png-large.png",
    "Tunisie": "lib/assets/Tunisia_Big (1).png",
    "Brésil": "lib/assets/brazil-flag-png-large.png",
    "Italie": "lib/assets/italy-flag-png-large.png",
    "Canada": "lib/assets/canada-flag-png-large.png",
    "Australie": "lib/assets/australia.jpg",
    "Allemagne": "lib/assets/germany-flag-png-large.png",
    "Espagne": "lib/assets/spain-flag-png-large.png",
    "Afrique du Sud": "lib/assets/south-africa-flag-png-large.png",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Liste des Pays",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.public,
                    size: 60,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Atlas Géographique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.red),
              title: const Text(
                'Quitter',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Quitter'),
                      content: const Text(
                        'Voulez-vous vraiment quitter l\'application ?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Annuler'),
                        ),
                        TextButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          child: const Text(
                            'Quitter',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: listePays.length,
        itemBuilder: (context, index) {
          final pays = listePays[index];
          final drapeau = drapeaux[pays.nom] ?? "lib/assets/globe.png";

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 2,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  drapeau,
                  width: 60,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                pays.nom,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text("Capitale: ${pays.capitale}"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPaysPage(pays: pays, drapeau: drapeau),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.public,
                size: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 30),
              const Text(
                'Atlas Géographique',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'application des pays faite par mohamed chebbi',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              const Text(
                '© 2025 atlas geo',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
