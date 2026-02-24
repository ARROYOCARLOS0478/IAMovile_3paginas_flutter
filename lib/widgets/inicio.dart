import 'package:flutter/material.dart';


// --- PAGINA 1: INICIO ---
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio de rappi Carlos 6I", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: decoracionGradient([const Color.fromARGB(255, 145, 10, 104), const Color.fromARGB(255, 202, 42, 42), const Color.fromARGB(255, 202, 94, 31),const Color.fromARGB(255, 238, 219, 47)]),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Página Inicial",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              icon: const Icon(Icons.arrow_forward),
              label: const Text("Ir a la Segunda Página"),
            ),
          ],
        ),
      ),
    );
  }
}
