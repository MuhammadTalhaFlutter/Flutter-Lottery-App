import 'package:flutter/material.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lottery App')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery App Wining Number is 7',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: counter == 7 ? 350 : 300,
              height: counter == 7 ? 350 : 200,
              decoration: BoxDecoration(
                  color: counter == 7
                      ? const Color.fromARGB(255, 9, 61, 56)
                      : Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
              child: counter == 7
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done,
                          color: Colors.green,
                          size: counter == 7 ? 80 : 40,
                        ),
                        Text(
                          'Congrats, You won the Lottery and Your Number is: $counter',
                          style: TextStyle(fontSize: counter == 7 ? 30 : 20),
                          textAlign:
                              counter == 7 ? TextAlign.center : TextAlign.start,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 40,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Better luck next time your number is $counter \n try again',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter = random.nextInt(10);
          setState(() {});
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
