import 'package:flutter/material.dart';

class NewExchangeScreen extends StatefulWidget {
  const NewExchangeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewExchangeScreenState();
  }
}

class _NewExchangeScreenState extends State<NewExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exchange"),
        leading: TextButton(
          onPressed: () {},
          child: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Person"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
