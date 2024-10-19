import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
      ),
      body: const Center(
        child: Text('This is the Calls Page'),
      ),
    );
  }
}
