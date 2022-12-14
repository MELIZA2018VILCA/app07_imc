import 'dart:js_util';
import 'dart:math';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  double peso = 70;
  double altura = 155;

  double imc = 0;

  String imcMensaje = "";
  String estado="";

  calculadoraImc() {
    imc = peso / pow((altura / 100), 2);
    if (imc < 16) {
      imcMensaje = 'delgadez severa';
    } else if (imc >= 16 && imc < 17) {
      imcMensaje = 'delgadez moderada';
    } else if (imc >= 17 && imc < 18.5) {
      imcMensaje = 'delgadez leve';
    } else if (imc >= 18.5 && imc < 25) {
      imcMensaje = 'peso normal';
    } else if (imc == 25) {
      imcMensaje = 'sobrepeso';
    } else if (imc >= 25 && imc < 30) {
      imcMensaje = 'preobeso';
    } else if (imc == 30) {
      imcMensaje = 'obesidad ';
    } else if (imc >= 30 && imc < 35) {
      imcMensaje = 'obesidad leve';
    } else if (imc >= 35 && imc < 40) {
      imcMensaje = 'obesidad media';
    } else {
      imcMensaje = 'obecidad morbida';
    }
    if (imc < 18.5) {
      estado='assets/images/perosn2.png';
    }else if (imc >= 18.5 && imc < 25) {
      estado = 'assets/images/person1.png';
    } else {
      estado = 'assets/images/person3.png';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff2b2d42),
        title: Text(
          "IMC App",
          style: TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Bienvenido, selecciona tu peso y talla",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff001d3d).withOpacity(0.80),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  peso.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 30,
                    color: Color(0xff2b2d42).withOpacity(0.80),
                  ),
                ),
                Text(
                  "Kg",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 10,
                    color: Color(0xff2b2d42).withOpacity(0.80),
                  ),
                ),
              ],
            ),
            Slider(
                value: peso,
                min: 20,
                max: 200,
                onChanged: (double value) {
                  peso = value;
                  setState(() {});
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  altura.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 38.0,
                    color: Color(0xFF001d3d).withOpacity(0.80),
                  ),
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    color: Color(0xFF001d3d).withOpacity(0.80),
                  ),
                ),
              ],
            ),
            Slider(
                value: altura,
                min: 100,
                max: 220,
                onChanged: (double value) {
                  altura = value;
                  setState(() {});
                }),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2b2d42)),
                onPressed: () {
                  calculadoraImc();
                },
                icon: Icon(Icons.play_arrow),
                label: Text(
                  "calcular",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10.0),
            Text(
              "resultados:",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff001d3d).withOpacity(0.80)),
            ),
            Center(
              child: Image.asset(
                estado,
                height: 180,
                width: 180,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              imc.toString(),
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xffff006e).withOpacity(0.80),
              ),
            ),
            Text(
              imcMensaje,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff001d3d).withOpacity(0.80)),
            ),
            Text(
              "debes comor mas sano y realizar mas actividad fisica:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff001d3d).withOpacity(0.80)),
            ),
          ],
        ),
      ),
    );
  }
}
