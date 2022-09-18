import 'package:flutter/material.dart';
import 'package:application/constants/text_styles.dart' as text_styles;

class CustomButton extends StatelessWidget {
  final String _text;
  final EdgeInsets? _margin;
  final VoidCallback _onPressed;

  const CustomButton(String text,
      {Key? key, EdgeInsets? margin, required VoidCallback onPressed})
      : _text = text,
        _margin = margin,
        _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _margin ?? EdgeInsets.zero,
      child: MaterialButton(
        minWidth: 200,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        onPressed: _onPressed,
        child: Text(_text, style: text_styles.medium),
      ),
    );
  }
}
