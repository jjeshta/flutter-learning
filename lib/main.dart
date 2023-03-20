import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
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
  List<Quote> quotes = [
    Quote(author: "Saitama, OnePunch Man", text: "Human strength lies in the ability to change yourself."),
    Quote(author: "Rock Lee, Naruto", text: "A dropout will beat a genius through hard work."),
    Quote(author: "Monkey D. Luffy, One Piece", text: "Forgetting is like a wound. The wound may heal, but it has already left a scar."),
    Quote(author: "Edward Elric, FMA: Brotherhood", text: "How can you keep moving forward if you keep regretting the past?"),
    Quote(author: "Erza Scarlet, Fairy Tail", text: "Those painful memories are what help us make it to tomorrow and become stronger."),
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
                (quote) =>  QuoteCard(quote: quote,)
        ).toList(),
      ),
    );
  }
}
