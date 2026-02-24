import 'package:flutter/material.dart';


// --- PAGINA 2: SEGUNDA ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurantes de pizza", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: decoracionGradient([Colors.green.shade900, Colors.green.shade300]),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/little-ca.PNG',
                height: 200,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 100,
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade100),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text("Ir a la Tercera Página", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
