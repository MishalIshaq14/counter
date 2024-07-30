import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  var counter = 0;

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          " Stateful Counter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              counter += 1;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (counter > 0) {
                                counter--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 40,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        "$counter",
                        style: const TextStyle(
                            color: Colors.teal,
                            fontSize: 60,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.lock_reset_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    "Reset",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),

    );
  }
}
