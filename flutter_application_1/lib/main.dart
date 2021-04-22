import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/choose_location.dart';
import 'package:flutter_application_1/pages/loading.dart';
import 'pages/home.dart';
// import 'quote.dart';
// import 'quote_card.dart';

// void main() => runApp(MaterialApp(home: NinjaCard()));

// class NinjaCard extends StatefulWidget {
//   @override
//   _NinjaCardState createState() => _NinjaCardState();
// }

// class _NinjaCardState extends State<NinjaCard> {
//   List<Quote> quote = [
//     Quote(text: 'how many you don help', author: 'my singer'),
//     Quote(text: 'go fence ur village', author: 'oyibo'),
//     Quote(text: 'Goodness is a princess', author: 'very beautiful'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey[300],
//         appBar: AppBar(
//           title: Text('Ninja Card Id'),
//           centerTitle: true,
//           backgroundColor: Colors.grey[850],
//           elevation: 0.0,
//         ),
//         body: Column(
//           children: quote.map((e) {
//             return QuoteCard(
//                 quote: e,
//                 delete: () {
//                   setState(() {
//                     quote.remove(e);
//                   });
//                 });
//           }).toList(),
//         ));
//   }
// }
//
void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
