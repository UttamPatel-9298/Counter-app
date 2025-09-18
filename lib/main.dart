import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Number is',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            const SizedBox(height: 10),
            Text(
              '$num',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Increment'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: increment,

                      child: const Text('+', style: TextStyle(fontSize: 24)),
                    ),
                  ],
                ),
                const SizedBox(width: 30),

                Column(
                  children: [
                    const Text('Decrement'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: decrement,

                      child: const Text('-', style: TextStyle(fontSize: 24)),
                    ),
                  ],
                ),
                const SizedBox(width: 30),

                Column(
                  children: [
                    const Text('Reset'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: clear,

                      child: const Text(
                        'Clear',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void increment() {
    setState(() {
      num++;
    });
  }

  void decrement() {
    setState(() {
      num--;
    });
  }

  void clear() {
    setState(() {
      num = 0;
    });
  }
}
