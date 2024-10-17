import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const TicTacToe(),
    );
  }
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Tic Tac Toe",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          const Center(
            child: Card(
              child: ListTile(
                title: Center(
                  child: Text(
                    "Player-1: X",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) => Container(decoration: BoxDecoration(border: Border.all(color: Colors.white)),child: const Center(child: Text("x"))),
          )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                  )),
                  fixedSize: const WidgetStatePropertyAll(Size(250, 50)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () {},
                child: const Text(
                  "Reload Game",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
          )
        ],
      ),
    );
  }
}
