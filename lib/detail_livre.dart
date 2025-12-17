import 'package:flutter/material.dart';
import 'package:grand_devoir_app/donnees.dart';

class DetailLivre extends StatelessWidget {
  final Book book;
  DetailLivre({required this.book});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(book.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Par ${book.author}", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            SizedBox(height: 20),
            Text(book.description),
          ],
        ),
      ),
    );
  }
}