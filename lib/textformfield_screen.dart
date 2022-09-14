import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 50.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('入力フィールド',
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onChanged: (String value) {
                  setState(() {
                    text = value;
                  });
                },
                validator: (String? value) {
                  return null;
                },
                style: const TextStyle(fontSize: 24.0),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text('文字列 (改行コードを↓に変換)',
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                text.replaceAll('\n', ' ↓ '),
                style: const TextStyle(fontSize: 24.0, color: Colors.blue),
              ),
            ],
          )),
    );
  }
}
