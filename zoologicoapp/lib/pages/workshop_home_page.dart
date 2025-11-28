import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkshopHomePage extends StatelessWidget {
  const WorkshopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menú Zoologico')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('¡Bienvenidos al zoológico! Esperamos que disfruten de un día de aventura y aprendizaje.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 24),

            const Text(
              'Seleccione una opción:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () => context.go('/labor'),
              child: const Text('Animales por habitat'),
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () => context.go('/parts'),
              child: const Text('Calculadora de alimento'),
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () => context.go('/service'),
              child: const Text('Favoritos del zoologico'),
            ),
          ],
        ),
      ),
    );
  }
}
