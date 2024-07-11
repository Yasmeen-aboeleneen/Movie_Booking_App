import 'package:flutter/material.dart';

import '../../Core/Utils/Constants/Colors.dart';

class CustomPassTextField extends StatefulWidget {
  const CustomPassTextField({
    Key? key,
    required this.hint,
  }) : super(key: key);
  final String hint;

  @override
  State<CustomPassTextField> createState() => _CustomPassTextFieldState();
}

class _CustomPassTextFieldState extends State<CustomPassTextField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3, left: 7, right: 7),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscured,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: _toggleObscured,
                  child: Icon(
                    _obscured
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                    size: 24,
                    color: ColorsManger.kSecondaryColor,
                  ),
                ),
              ),
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: ColorsManger.kSecondaryColor, width: 2)),
              hintText: widget.hint,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                    color: ColorsManger.kSecondaryColor, width: 2),
              ),
            ),
            cursorColor: ColorsManger.kSecondaryColor,
          ),
        )
      ],
    );
  }
}
