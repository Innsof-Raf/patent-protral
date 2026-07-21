import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    required this.controller,
    required this.label,
    this.hintText,
    this.prefixText,
    this.validator,
    this.onFieldSubmitted,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText = false,
    this.textInputAction,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final String? hintText;
  final String? prefixText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(16);

    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      obscuringCharacter: '*',
      textInputAction: textInputAction,
      cursorColor: theme.colorScheme.primary,
      style: theme.textTheme.bodyLarge?.copyWith(
        color: AppColors.textDark,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        labelText: label.isEmpty ? null : label,
        hintText: hintText,
        prefixText: prefixText,
        filled: true,
        fillColor: theme.colorScheme.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        labelStyle: theme.textTheme.bodyLarge?.copyWith(
          color: AppColors.textLight,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
          color: AppColors.textLight.withValues(alpha: 0.6),
          fontSize: 14,
        ),
        prefixStyle: theme.textTheme.bodyLarge?.copyWith(
          color: AppColors.textDark,
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: theme.colorScheme.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: theme.colorScheme.error, width: 1.5),
        ),
      ),
    );
  }
}
