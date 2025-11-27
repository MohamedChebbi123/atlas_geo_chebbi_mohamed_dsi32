import 'package:flutter/material.dart';
import 'package:atlas_geochebbimohamed/models/Pays.dart';

class DetailPaysPage extends StatelessWidget {
  final Pays pays;
  final String drapeau;

  const DetailPaysPage({
    super.key,
    required this.pays,
    required this.drapeau,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pays.nom),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  drapeau,
                  width: 200,
                  height: 133,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              
              Text(
                pays.nom,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              _buildInfoCard(
                icon: Icons.location_city,
                label: 'Capitale',
                value: pays.capitale,
              ),
              const SizedBox(height: 15),
              _buildInfoCard(
                icon: Icons.people,
                label: 'Population',
                value: pays.population,
              ),
              const SizedBox(height: 15),
              _buildInfoCard(
                icon: Icons.map,
                label: 'Superficie',
                value: pays.superficie,
              ),
              const SizedBox(height: 15),
              _buildInfoCard(
                icon: Icons.language,
                label: 'Langue',
                value: pays.langue,
              ),
              const SizedBox(height: 30),
              // Bouton retour
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Retour à la liste'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.blue,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}