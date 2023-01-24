import 'package:flutter/material.dart';

import 'class_calculadora.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  //
  //crea una instancia de la clase Calculadora y se le asigna una variable llamada calculadora
  //esta se utiliza para acceder a los metodos de la clase Calculadora
  //
  Calculadora calculadora = Calculadora();
  //
  double? resultado;
  //
  //la variavle resultado se utiliza para guardar el resultado de la operacion
  //al presionar alguno de los botones
  //con el simbolo $ se indica que se esta insertando una varible dentro de una cadena
  // como ya sabemos el resultado guarda el resultado de la operacion oprimida ya sea
  //suma, resta , multiplicacion o division
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculadora',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Text('Resultado: $resultado'),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: () {
                      //
                      //sirve para cuando cada vez que se presione el boton
                      // se actualize el valor del resulrado de cada operacion
                      //
                      setState(
                        () {
                          resultado = calculadora.suma(1, 1);
                        },
                      );
                    },
                    child: Text('Suma'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          resultado = calculadora.resta(2, 1);
                        },
                      );
                    },
                    child: Text('Resta'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          resultado = calculadora.multiplicacion(9, 4);
                        },
                      );
                    },
                    child: Text('Multiplicar'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          resultado = calculadora.division(4, 2);
                        },
                      );
                    },
                    child: Text('Dividir'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
