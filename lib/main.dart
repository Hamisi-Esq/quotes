import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home:QuoteList() ,
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'George Sand ', text: 'There is only one happiness in this life, to love and be loved.'),
    Quote(author: 'Leo Christopher', text: 'I swear I couldnt love you more than I do right now, and yet I know I will tomorrow.'),
    Quote(author: 'Johann Wolfgang von Goethe', text: 'Love does not dominate; it cultivates.'),
    Quote(author: 'Henry Miller', text: 'The only thing we never get enough of is love; and the only thing we never give enough of is love.'),
    // Quote(author: 'Rumi', text: 'Love is the whole thing. We are only pieces'),
    // Quote(author: 'Erich Segal', text: 'True love comes quietly, without banners or flashing lights. If you hear bells, get your ears checked.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          },
        )).toList(),
      ),
    );
  }
}
