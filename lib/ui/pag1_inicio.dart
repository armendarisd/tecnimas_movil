import 'package:flutter/material.dart';
import 'package:reto2/controlador/controladorGeneral.dart';
import 'package:get/get.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  controladorGeneral Control = Get.find();
  int _counter = 4;

  void increment() {
    setState(() {
      if (_counter == 4) {
        _counter = 0;
      } else {
        _counter++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (_counter == 0) {
        _counter = 4;
      } else {
        _counter = _counter - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                width: 10,
                height: 10,
              ),
              const Image(
                  image: AssetImage("assets/images/logo1.png"), 
                  width: 300),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              Image(image: AssetImage("assets/images/cuadros.jpg")),
              const SizedBox(height: 16),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Número de celular',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor introduzca el número de celular';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Contraseña',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor introduzca la contraseña';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Sign up'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Image(image: AssetImage("assets/images/cuadros.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}
