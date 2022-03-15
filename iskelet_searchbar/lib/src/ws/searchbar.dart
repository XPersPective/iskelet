import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    this.isUpperCase = false,
    required this.onChanged,
    required this.initialValue,
    this.style,
    this.searchIconColor,
    this.border,
  }) : super(key: key);

  final bool isUpperCase;
  final void Function(String value) onChanged;

  final String? initialValue;
  final TextStyle? style;
  final Color? searchIconColor;
  final OutlineInputBorder? border;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: widget.isUpperCase ? [_AutoCapWordsInputFormatter()] : null,
      autocorrect: false,
      textCapitalization: TextCapitalization.characters,
      keyboardType: TextInputType.text,
      onChanged: (value) {
        _value = value.trim();
        widget.onChanged(_value);
      },
      style: widget.style ?? const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        hintText: _value.isEmpty ? widget.initialValue : _value,
        contentPadding: const EdgeInsets.all(8.0),
        prefixIcon: Icon(Icons.search_outlined, color: widget.searchIconColor ?? Colors.grey, size: 20),
        border: widget.border ?? const OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}

class _AutoCapWordsInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
