import 'package:flutter/material.dart';

class RespostaBtn extends StatelessWidget {
  final String textoBtn;
  final void Function() callback;
  const RespostaBtn(this.textoBtn, this.callback, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(textoBtn),
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        minimumSize: const Size(140, 36),
        textStyle: const TextStyle(fontSize: 20),
      ),
    );
  }
}
