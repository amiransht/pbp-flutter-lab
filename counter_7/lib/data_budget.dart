import 'package:flutter/material.dart';
import 'main.dart';
import 'tambah_budget.dart';
import 'drawer.dart';

class DataBudgetPage extends StatelessWidget {
  const DataBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Data Budget';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
         drawer: buildDrawer(context),
        body: SingleChildScrollView(
         child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: TambahBudgetPage.listBudget.map((BudgetItem o) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            o.date.toString().substring(0,16),
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 106, 106)
                      ),
                      const SizedBox(height: 6.0),
                      Row(
                        children: [
                          Text(
                            o.judul,
                            style: const TextStyle(fontSize: 24.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp ' + o.nominal.toString(),
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          if (o.jenis.toString() == 'Pengeluaran')...[
                            Text(
                              o.jenis.toString(),
                              style: const TextStyle(fontSize: 16.0, color: Colors.redAccent),
                            ),
                          ] else ...[
                            Text(
                              o.jenis.toString(),
                              style: const TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                            ),
                          ]
                          
                        ],
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
         ),
        ),
      ),
    );
  }
}



