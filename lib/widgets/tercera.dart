import 'package:flutter/material.dart';
import 'package:myapp/widgets/decoracion.dart';


// --- PAGINA 3: TERCERA ---
class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Supermercado", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: decoracionGradient([Colors.pink.shade900, Colors.pink.shade200]),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const <BoxShadow>[BoxShadow(color: Colors.black26, blurRadius: 10)],
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Volver atrás"),
            ),
          ],
        ),
      ),
    );
  }
}