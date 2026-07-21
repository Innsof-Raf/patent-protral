import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommonDropdownField<T> extends StatelessWidget {
  final T? value;
  final String labelText;
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final bool enabled;

  const CommonDropdownField({
    super.key,
    required this.labelText,
    required this.items,
    this.value,
    this.hintText,
    this.onChanged,
    this.validator,
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
        DropdownButtonFormField<T>(
          initialValue: value,
          items: items,
          onChanged: enabled ? onChanged : null,
          validator: validator,
          isExpanded: true,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: theme.colorScheme.primary,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            ),
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
              vertical: 16,
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
          ),
        ),
      ],
    );
  }
}
