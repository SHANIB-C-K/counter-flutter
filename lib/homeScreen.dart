import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _counter = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'CounterApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 117, 115, 115),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 33, 33, 33),
                    blurRadius: 4,
                    offset: Offset(0, 8), // Shadow position
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Counter',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    _counter.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter = 0;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.orange,
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    fixedSize: const MaterialStatePropertyAll(
                      Size(110, 50),
                    ),
                    shadowColor: const MaterialStatePropertyAll(Colors.black),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      {
                        _counter == 0 ? _counter = 0 : _counter--;
                      }
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.red,
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    shadowColor: const MaterialStatePropertyAll(
                      Colors.black,
                    ),
                    fixedSize: const MaterialStatePropertyAll(
                      Size(110, 50),
                    ),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.green,
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    shadowColor: const MaterialStatePropertyAll(
                      Colors.black,
                    ),
                    fixedSize: const MaterialStatePropertyAll(
                      Size(110, 50),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
