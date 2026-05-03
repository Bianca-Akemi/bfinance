class StringHelper {
  static String extractInitials(String fullName) {
    final trimmed = fullName.trim();
    if (trimmed.isEmpty) return '';

    final nameParts =
        trimmed.split(' ').where((part) => part.isNotEmpty).toList();

    if (nameParts.isEmpty) return '';

    final firstLetter = nameParts.first[0];

    final lastLetter = nameParts.length > 1
        ? nameParts.last[0]
        : nameParts.first[nameParts.first.length - 1];

    return '${firstLetter.toUpperCase()}${lastLetter.toUpperCase()}';
  }
}
