import 'package:flutter/material.dart';
import 'main.dart';
import 'tambah_budget.dart';

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
         drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('Counter'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TambahBudgetPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataBudgetPage()),
                  );
                },
              ),
            ],
          ),
        ),
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
                          Text(
                            o.jenis.toString(),
                            style: const TextStyle(fontSize: 16.0),
                          ),
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



