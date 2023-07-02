import 'package:flutter/material.dart';

void main() {
  runApp(const CodeDevilMe());
}

class CodeDevilMe extends StatelessWidget {
  const CodeDevilMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CodeDevil.me | Don't hate the code, It's just ones and zeros.",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: "CodeDevil.me | Don't hate the code, It's just ones and zeros."),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Don't hate the code, It's just ones and zeros.",
            ),
          ],
        ),
      ),
    );
  }
}
