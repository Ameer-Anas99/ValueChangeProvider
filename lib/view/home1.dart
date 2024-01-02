import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valuechange/controller/provider.dart';
import 'package:valuechange/view/home2.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(child: Text("Home 1")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomePage2(),
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
                  child: const Text("Text Changing Button")),
            )
          ],
        ),
      ),
    );
  }
}
