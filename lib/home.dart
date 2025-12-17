import 'package:flutter/material.dart';
import 'package:grand_devoir_app/detail_livre.dart';
import 'package:grand_devoir_app/donnees.dart';
import 'package:grand_devoir_app/page_connexion.dart';

class Home extends StatelessWidget {
 final List<Book> books = [
    Book("L'Étranger", "Albert Camus", "Une histoire sur l'absurdité de la condition humaine."),
    Book("1984", "George Orwell", "Un roman dystopique sur la surveillance de masse."),
    Book("Le Petit Prince", "Antoine de Saint-Exupéry", "Un conte philosophique poétique."),
     Book("L'Écouteur", "Albert Camus", "Une histoire sur l'absurdité de la condition humaine."),
    Book("1900", "Emir Jonhson", "Un roman sur les Bienfaits du monde."),
    Book("Le Petit ecrivain", "Archi de Saint-Montagne", "Un conte poétique et drole."),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Livres Disponibles"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => PageConnexion())),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(books[index].title),
            subtitle: Text(books[index].author),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailLivre(book: books[index])),
            ),
          );
        },
      ),
    );
  }
}