import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                decoration: const BoxDecoration(image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.fitWidth,

              ),),
              ),
              
             
                  
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("1 Registre su dirección"),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("2 Seleccione los servicios"),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("3 Pague sus servicios"),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
