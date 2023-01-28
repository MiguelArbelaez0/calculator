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
  String? resultado = "";
  //
  //la variavle resultado se utiliza para guardar el resultado de la operacion
  //al presionar alguno de los botones
  //con el simbolo $ se indica que se esta insertando una varible dentro de una cadena
  // como ya sabemos el resultado guarda el resultado de la operacion oprimida ya sea
  //suma, resta , multiplicacion o division
  //
  late double numero1, numero2;

  //funciones que dentro hay un metodo , el setstate se utiliza para
  // llamar primero el resultado luego que haga la operacion con los
  //dos numeros

  void sumar() {
    setState(() {
      resultado = calculadora.suma(numero1, numero2).toString();
    });
  }

  void restar() {
    setState(() {
      resultado = calculadora.resta(numero1, numero2).toString();
    });
  }

  void multiplicacion() {
    setState(() {
      resultado = calculadora.multiplicacion(numero1, numero2).toString();
    });
  }

  void division() {
    setState(() {
      resultado = calculadora.division(numero1, numero2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculadora',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                resultado!,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onChanged: (value) {
                        numero1 = double.parse(value);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 80,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        numero2 = double.parse(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: sumar,
                    child: Text('Sumar'),
                  ),
                  ElevatedButton(
                    onPressed: restar,
                    child: Text('Restar'),
                  ),
                  ElevatedButton(
                    onPressed: multiplicacion,
                    child: Text('Multiplicar'),
                  ),
                  ElevatedButton(
                    onPressed: division,
                    child: Text('Dividir'),
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
