extension StringExtensions on String {
  String toTitleCase() {
    if (isEmpty) return this;
    return split(' ')
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }

  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String toArabicNumbers() {
    const Map<String, String> arabicNumbers = {
      '0': '٠',
      '1': '١',
      '2': '٢',
      '3': '٣',
      '4': '٤',
      '5': '٥',
      '6': '٦',
      '7': '٧',
      '8': '٨',
      '9': '٩',
    };
    return split('').map((char) => arabicNumbers[char] ?? char).join();
  }

  String localize(String locale) {
    if (locale == 'ar') {
      return toArabicNumbers();
    }
    return this;
  }
}
