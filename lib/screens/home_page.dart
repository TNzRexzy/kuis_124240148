import 'package:flutter/material.dart';

import '../data/data_car.dart';
import 'detail_page.dart';
import 'login_page.dart';

// Memakai StatelessWidget karena halaman ini hanya menampilkan data, tidak ada interaksi form
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: ListTile(
              title: Text(cars[index].name),
              subtitle: Text('${cars[index].year}'),
              leading: Image.network(cars[index].image, width: 50, height: 50),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(car: cars[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
