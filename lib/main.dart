import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OtakuCard()
  ));
}

class OtakuCard extends StatefulWidget {
  const OtakuCard({Key? key}) : super(key: key);

  @override
  State<OtakuCard> createState() => _OtakuCardState();
}

class _OtakuCardState extends State<OtakuCard> {
  int otakuLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Otaku ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            otakuLevel++;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             const Center(
               child: CircleAvatar(
                 backgroundImage: AssetImage('assets/uzumaki.jpg'),
                 radius: 40.0,

               )
             ) ,
            Divider(
              height: 90.0,
              color: Colors.grey.shade800,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Uzumaki Naruto',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'ANIME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Naruto Shippuden',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$otakuLevel',
              style: const TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                const SizedBox(width: 10.0),
                const Text(
                  'naruto.uzumaki@konoha.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    letterSpacing: 2.0
                  ),

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
