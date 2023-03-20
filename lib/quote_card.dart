import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  //final make the data to be passed in this statelesswidget
  final Quote quote;
  final void Function()? delete;
  const QuoteCard({super.key, required this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              Text(
                quote.text,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0
                ),
              ),
              const SizedBox(height: 6.0,),
              Text(
                quote.author,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13.0
                ),
              ),
              const SizedBox(height: 6.0,),
              TextButton.icon(onPressed: delete, icon: const Icon(Icons.delete), label: Text("Delete Quote"))
            ],
          ),
        )
    );
  }
}
