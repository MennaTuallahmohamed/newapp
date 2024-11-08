import 'package:flutter/material.dart';
import 'Login_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: Stack(
          children: <Widget>[
            // صورة الشوكولاتة
            Image.asset(
              'assets/images/chocolate.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            // حاوية نص ترحيبي
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 0), // زيادة القيمة هنا
              child: const Text(
                'Welcome to our store',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // حاوية بحث
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 200), // زيادة القيمة هنا
              child: const Text(
                'Find your perfect chocolate',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // زر "ابدأ التسوق"
            Positioned(
              bottom: 50,
              left: 50,
              right: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("LoginScreen");


                },
                child: const Text('Start Shopping'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
