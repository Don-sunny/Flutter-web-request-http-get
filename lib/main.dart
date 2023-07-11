import 'package:flutter/material.dart';
import 'package:http_methods/apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenHome(),
    );
  }
}

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _numberEditingController = TextEditingController();

  String getResult = 'Type number and press get result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Enter a number',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _numberEditingController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () async {
                  int number = int.parse(_numberEditingController.text);
                  final result = await getNumberFact(number: number);
                  setState(() {
                    getResult = result.triviaText ?? 'Number is not found';
                  });
                },
                child: const Text("Submit"),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.purple[100],
            height: 150,
            width: double.infinity,
            child: Center(
              child: Text(
                getResult,
                textAlign: TextAlign.center,
                maxLines: 2,
                softWrap: true,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
