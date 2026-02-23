import 'package:flutter/material.dart';
import 'package:myapp/widgets/inicio.dart';
import 'package:myapp/widgets/segunda.dart';
import 'package:myapp/widgets/tercera.dart';

void main() {
  runApp(const MiAppGalactica());
}

class MiAppGalactica extends StatelessWidget {
  const MiAppGalactica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Flutter',
      // Definimos las rutas de la aplicación
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaInicial(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}

// --- MIXIN PARA DEGRADADOS (Para no repetir código de diseño) ---
Widget decoracionGradient(List<Color> colores) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: colores,
      ),
    ),
  );
}
