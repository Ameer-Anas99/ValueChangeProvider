import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valuechange/controller/provider.dart';
import 'package:valuechange/view/home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueChange(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage1(),
      ),
    );
  }
}
