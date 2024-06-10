import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum InputType { number, text }

class AppTextFormField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final String label;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final TextEditingController? parentMatchController;
  final InputType inputType;
  final Widget? prefixIcon;
  final InputBorder? border;
  final Color? backgroundColor;
  final bool autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final bool validatePasswordFormat;
  final bool isMultline;
  final bool isEnabled;

  const AppTextFormField({
    super.key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    required this.inputType,
    this.label = '',
    this.focusNode,
    this.onChanged,
    this.parentMatchController,
    this.prefixIcon,
    this.backgroundColor,
    this.border,
    this.autofocus = false,
    this.contentPadding,
    this.validatePasswordFormat = false,
    this.isMultline = false,
    this.isEnabled = true,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;

  TextInputType _getKeyboardType() {
    switch (widget.inputType) {
      case InputType.number:
        return TextInputType.number;
      case InputType.text:
      default:
        return TextInputType.text;
    }
  }

  String? _validateInput(String? value) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _autoValidate = AutovalidateMode.onUserInteraction;
      });
    });

    if (value == null) return 'This field is required';

    switch (widget.inputType) {
      case InputType.number:
        return value.isNotEmpty ? null : 'This field is required';
      case InputType.text:
        return value.isNotEmpty ? null : 'This field is required';
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      controller: widget.controller,
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
      autofocus: widget.autofocus,
      enableSuggestions: false,
      enabled: widget.isEnabled,
      inputFormatters: widget.inputType == InputType.number ? [FilteringTextInputFormatter.digitsOnly] : [],
      keyboardType: _getKeyboardType(),
      textInputAction: TextInputAction.next,
      onFieldSubmitted: widget.onFieldSubmitted,
      obscureText: false,
      obscuringCharacter: '*',
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      autovalidateMode: _autoValidate,
      maxLines: widget.isMultline ? 3 : null,
      style: widget.isEnabled ? null : const TextStyle(color: Colors.black),
      validator: _validateInput,
      decoration: InputDecoration(
          border: widget.border,
          focusedBorder: widget.border,
          errorBorder: widget.border?.copyWith(borderSide: const BorderSide(color: Colors.red)),
          fillColor: widget.backgroundColor,
          filled: widget.backgroundColor != null,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: widget.label,
          contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: null),
    );
  }
}
