import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final inactiveBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );

    final activeBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.deepOrange,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Currency Converter",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter amount in BDT',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: activeBorder,
                enabledBorder: inactiveBorder,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
