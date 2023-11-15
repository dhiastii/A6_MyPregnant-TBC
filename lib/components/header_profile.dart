import 'package:flutter/material.dart';
import 'package:mypregnant/controller/auth_controller.dart';
import 'package:mypregnant/view/login_page.dart';

AppBar headerProfile(context,
    {bool isTitle = false, required String titleText}) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          isTitle ? "My Pregnant & Tbc" : titleText,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              var authctrl = AuthController();
              authctrl.signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ),
    backgroundColor: const Color.fromARGB(255, 152, 100, 161),
    automaticallyImplyLeading: true,
  );
}
