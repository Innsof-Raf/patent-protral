import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final int? minLines;
  final bool enabled;

  const CommonTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.readOnly = false,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.validator,
    this.maxLines = 1,
    this.minLines,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            labelText,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        const Gap(8),
        TextFormField(
          controller: controller,
          onTap: onTap,
          readOnly: readOnly,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          validator: validator,
          maxLines: maxLines,
          minLines: minLines,
          enabled: enabled,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            filled: true,
            fillColor: enabled
                ? theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.3,
                  )
                : theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.1,
                  ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: theme.colorScheme.error, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: theme.colorScheme.error, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
