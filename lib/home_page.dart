import 'dart:js_util';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  double peso = 70;
  double altura = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  peso.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 30,
                    color: Color(0xff2b2d42).withOpacity(0.80),
                  ),
                ),
                Text(
                  "Cm",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 10,
                    color: Color(0xff2b2d42).withOpacity(0.80),
                  ),
                ),
              ],
            ),
            Slider(
                value: altura,
                min: 20,
                max: 200,
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
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                  label: Text(
                    "calcular",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              thickness: 2,
              
            ),SizedBox(height: 10.0),
              Text("resultados:",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff001d3d).withOpacity(0.80)
              ),),
          ],
        ),
      ),
    );
  }
}
