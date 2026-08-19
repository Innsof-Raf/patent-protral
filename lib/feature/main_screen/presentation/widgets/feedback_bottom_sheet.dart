import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_text_field.dart';

class FeedbackBottomSheet {
  /// Returns `true` once the user submits valid feedback, or `null` if the
  /// sheet is dismissed without submitting.
  static Future<bool?> show(BuildContext context) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => const _FeedbackSheetContent(),
    );
  }
}

class _FeedbackSheetContent extends StatefulWidget {
  const _FeedbackSheetContent();

  @override
  State<_FeedbackSheetContent> createState() => _FeedbackSheetContentState();
}

class _FeedbackSheetContentState extends State<_FeedbackSheetContent> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(
        20,
        24,
        20,
        MediaQuery.viewInsetsOf(context).bottom + 24,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.lang.shareYourFeedback,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(20),
            CommonTextField(
              controller: _controller,
              labelText: context.lang.feedback,
              hintText: context.lang.feedbackHint,
              maxLines: 4,
              minLines: 4,
              textInputAction: TextInputAction.newline,
              validator: (value) => (value == null || value.trim().isEmpty)
                  ? context.lang.pleaseEnterYourFeedback
                  : null,
            ),
            const Gap(20),
            ActiveButton(
              onPressed: _submit,
              child: Text(context.lang.submit),
            ),
          ],
        ),
      ),
    );
  }
}
