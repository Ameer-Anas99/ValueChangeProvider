import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valuechange/controller/provider.dart';
import 'package:valuechange/view/home3.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(child: Text("Homepage 2")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomePage3(),
                  ));
                },
                child: const Text("Press Button")),
            const SizedBox(
              height: 20,
            ),
            Consumer<ValueChange>(
              builder: (context, changeprovider, child) => Text(
                // "Previours Value",
                changeprovider.value,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Consumer<ValueChange>(
              builder: (context, pro, child) => ElevatedButton(
                  onPressed: () {
                    pro.changevalue();
                  },
                  child: const Text("Text Changing Button ")),
            )
          ],
        ),
      ),
    );
  }
}
