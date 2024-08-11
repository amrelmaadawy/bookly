import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class customSearchField extends StatelessWidget {
   customSearchField({super.key, required this.onChange});
 final ValueChanged<String> onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onChange,
      decoration: InputDecoration(
          hintText: 'search',
          enabledBorder: outLineBorder(),
          focusedBorder: outLineBorder(),
          suffixIcon: IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 15,
            ),
            onPressed: (() {}),
          )),
    );
  }

  OutlineInputBorder outLineBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white));
}
