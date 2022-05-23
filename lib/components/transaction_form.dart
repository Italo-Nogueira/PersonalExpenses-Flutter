import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
   TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.purple,
      minimumSize: const Size(88, 44),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      backgroundColor: Colors.blue,
    );

    return  Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Nova Transação'),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(labelText: 'Valor em R\$'),
            ),
            TextButton(
              style: flatButtonStyle,
              onPressed: () {
                print('$titleController.text - $valueController.text');
              },
              child: const Text('Nova Transação'),
            ),
          ],
        ),
      ),
    );
  }
}
