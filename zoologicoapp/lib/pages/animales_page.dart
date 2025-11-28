import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimalesPage extends StatefulWidget {
  const AnimalesPage({super.key});

  @override
  State<AnimalesPage> createState() => _AnimalesPageState();
}

class _AnimalesPageState extends State<AnimalesPage> {
  String tipo_plato = 'Selva';
  String resultText = '';

  void calculateTip() {

    if (tipo_plato == 'Selva') {
      resultText = 'Tigre, pantera, ';
    } else if (tipo_plato == 'Sabana') {
      resultText = 'Jirafa, hipopotamo,';
    } else if (tipo_plato == 'Acuatico') {
      resultText = 'Ballena, delfin, tilapia';
    } else if (tipo_plato == 'Aviario') {
      resultText = 'colibrì, condor, gallinazo, pajarito';
    }


    setState(() {
      resultText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animales por Habitat'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Selecciona el habitat:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

//***************************COMBO BOX 1 ********************** */
            DropdownButton<String>(
              value: tipo_plato, //Aqui selecciono el tipo de cliente
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: 'Selva',
                  child: Text('Selva'),
                ),
                DropdownMenuItem(
                  value: 'Sabana',
                  child: Text('Sabana'),
                ),
                DropdownMenuItem(
                  value: 'Acuatico',
                  child: Text('Acuatico'),
                ),
                DropdownMenuItem(
                  value: 'Aviario',
                  child: Text('Aviario'),
                ),
              ],
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  tipo_plato = value;
                });
              },
            ),
//*************************INPUT TEXT************************ */
/*
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Precio base del menú (\$)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {     // Capturo un valor
                amountText = value;    // Asigno el valor capturado en la variable
              },
            ),


            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Cantidad de menús (\$)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {      // Capturo un valor
                cantidad_menu = value;  // Asigno el valor capturado en la variable
              },
            ),
*/
//**********************BOTON*********************************** */
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculateTip,      // Ejecuto la función de carlularTip()
              child: const Text('Listar animales'),
            ),
//**********************TEXT DE SALIDA************************** */
            const SizedBox(height: 16),
            Text(resultText),  
          ],
        ),
      ),
    );
  }
}
