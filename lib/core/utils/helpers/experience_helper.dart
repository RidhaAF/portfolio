int calculateYoe({DateTime? startDate, DateTime? currentDate}) {
  final start = startDate ?? DateTime(2022, 8, 1);
  final now = currentDate ?? DateTime.now();

  int years = now.year - start.year;
  if (now.month < start.month ||
      (now.month == start.month && now.day < start.day)) {
    years--;
  }

  return years;
}
