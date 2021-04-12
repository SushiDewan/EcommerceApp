import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  final String hintText;
  final Function(String) onSaved;
  final IconData leading;
  final IconData trailing;
  final Function(String) onChanged;
  final String Function(String) validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final FocusNode focusNode;
  final bool autoCapatalize;
  final int maxLength;
  final int maxLines;
  final int minLines;
  final TextEditingController txtEditingController;

  const TxtField(
      {Key key,
      @required this.hintText,
      this.onSaved,
      this.leading,
      this.trailing,
      this.onChanged,
      this.validator,
      this.keyboardType,
      this.obscureText = false,
      this.focusNode,
      this.autoCapatalize = false,
      this.maxLength,
      this.maxLines,
      this.minLines,
      this.txtEditingController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextFormField(
        controller: txtEditingController,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            leading,
            size: 20,
          ),
          suffixIcon: Icon(
            trailing,
            size: 20,
          ),
          hintText: hintText,
          isDense: true,
          hintStyle: TextStyle(
            fontSize: 15,
          ),
          border: InputBorder.none,
          filled: true,
        ),
        obscureText: obscureText,
        validator: validator ?? (value) => value.isEmpty ? "$hintText must not be empty." : null,
        onSaved: onSaved,
        onChanged: onChanged,
      ),
    );
  }
}
