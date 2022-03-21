import 'package:flutter/material.dart';
import 'package:iskelet_searchbar/iskelet_searchbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
        // textTheme: GoogleFonts.ubuntu(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const WpHome(),
    );
  }
}

class WpHome extends StatelessWidget {
  const WpHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupSearch(
          searchBarBackIcon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          initialValue: 'BTCUSDT',
          items: () => [
            'BTCUSDT',
            'ETHUSDT',
            'USDTUSDT',
            'ADAUSDT',
            'MIOTAUSDT',
            'EOSUSDT',
            'DASHUSDT',
            'XNOUSDT',
            'REPUSDT',
            'STEEMUSDT'
          ],
          listItemTitle: (value) => Text(value),
          title: (value) => ListTile(
            title: Text(value),
            leading: const Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
