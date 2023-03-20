import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: QuoteList(),
  )
);


class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    "Human strength lies in the ability to change yourself. –  Saitama, OnePunch Man",
    "A dropout will beat a genius through hard work. –  Rock Lee, Naruto",
    "Forgetting is like a wound. The wound may heal, but it has already left a scar. – Monkey D. Luffy, One Piece",
    "How can you keep moving forward if you keep regretting the past?  –  Edward Elric, FMA: Brotherhood",
    "Those painful memories are what help us make it to tomorrow and become stronger.  – Erza Scarlet, Fairy Tail"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Anime Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map(
                (quote) => Text(quote)
        ).toList(),
      ),
    );
  }
}
