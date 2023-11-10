import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focus = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(49));

    final inputDecarator = InputDecoration(
        hintText: 'End your message with a "??"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
            onPressed: () {
              print('Valor de caja de texto ${textController.value.text}');
            },
            icon: const Icon(Icons.send_outlined)));

    return TextFormField(
      onTapOutside: (event) {
        focus.unfocus();
      },
      focusNode: focus,
      controller: textController,
      decoration: inputDecarator,
      onFieldSubmitted: (value) {
        print('Submit $value');
        textController.clear();
        focus.requestFocus();
      },
    );
  }
}
