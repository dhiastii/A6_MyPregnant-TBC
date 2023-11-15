import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mypregnant/controller/tbc_controller.dart';
import 'package:mypregnant/view/tbc/add_tbc.dart';
import 'package:mypregnant/view/tbc/detaildata_tbc.dart';

class DaftarTbc extends StatefulWidget {
  const DaftarTbc({super.key});

  @override
  State<DaftarTbc> createState() => _DaftarTbcState();
}

class _DaftarTbcState extends State<DaftarTbc> {
  var tbcctrl = TbcController();

  @override
  void initState() {
    tbcctrl.getTbc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: StreamBuilder<List<DocumentSnapshot>>(
                stream: tbcctrl.stream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  final List<DocumentSnapshot> datatbc = snapshot.data!;

                  return ListView.builder(
                    itemCount: datatbc.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onLongPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailDataTbc(
                                    tbcid: datatbc[index]['tbcid'],
                                    hari: datatbc[index]['hari'],
                                    formattgl: datatbc[index]['formattgl'],
                                    bb: datatbc[index]['beratbadan'],
                                    keluhan: datatbc[index]['keluhan'],
                                    tindakan: datatbc[index]['tindakan']),
                              ),
                            ).then((value) {
                              if (value == true) {
                                setState(() {
                                  tbcctrl.getTbc();
                                });
                              }
                            });
                          },
                          child: Card(
                            elevation: 10,
                            child: ListTile(
                              title: Text(datatbc[index]['hari']),
                              leading: const Text('Hari ke'),
                              subtitle:
                                  Text(datatbc[index]['formattgl'].toString()),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  tbcctrl.removeTbc(
                                      datatbc[index]['tbcid'].toString());
                                  setState(() {
                                    tbcctrl.getTbc();
                                  });

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Data dihapus')));
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTbc(),
            ),
          ).then((value) {
            if (value == true) {
              setState(() {
                tbcctrl.getTbc();
              });
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
