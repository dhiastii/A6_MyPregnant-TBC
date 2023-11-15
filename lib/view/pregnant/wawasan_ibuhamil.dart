import 'package:flutter/material.dart';
import 'package:mypregnant/view/pregnant/content/saranmakan.dart';
import 'package:mypregnant/view/pregnant/content/sarantidur.dart';
import 'package:mypregnant/view/pregnant/content/stunting.dart';
import 'package:mypregnant/view/pregnant/content/tips_menyusui.dart';
import 'package:mypregnant/view/pregnant/content/tipshamil.dart';
import 'package:mypregnant/view/pregnant/content/tipskerja_hamil.dart';

class WawasanPregnant extends StatefulWidget {
  const WawasanPregnant({super.key});

  @override
  State<WawasanPregnant> createState() => _WawasanPregnantState();
}

class _WawasanPregnantState extends State<WawasanPregnant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TipsHamil()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 179, 239),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        'images/tipskehamilanbutton.png',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SaranMakanan()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 108, 201, 244),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        'images/saranmakananibuhamilbutton.png',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SaranTidur()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 179, 239),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        'images/sarantidurbutton.png',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TipsMenyusui()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 108, 201, 244),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        'images/tipsmenyusuibutton.png',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TipsKerja()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 179, 239),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        'images/tipskerjasaathamidunbutton.png',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Stunting()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 108, 201, 244),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        'images/stuntingbutton.png',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
