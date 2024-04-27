import 'package:calculator/provider/Calculator_Provider.dart';
import 'package:calculator/Screen/layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Calculator_Provider>(
            create: (_) => Calculator_Provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const layout(),
      ),
    );
  }
}
