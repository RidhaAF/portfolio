import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/core/utils/helpers/experience_helper.dart';

void main() {
  group('calculateYoe', () {
    final startDate = DateTime(2022, 8, 1);

    test('returns 0 at start date (Aug 1, 2022)', () {
      final now = DateTime(2022, 8, 1);
      expect(calculateYoe(startDate: startDate, currentDate: now), 0);
    });

    test('returns 0 before 1 full year (Jul 31, 2023)', () {
      final now = DateTime(2023, 7, 31);
      expect(calculateYoe(startDate: startDate, currentDate: now), 0);
    });

    test('returns 1 exactly at 1 year (Aug 1, 2023)', () {
      final now = DateTime(2023, 8, 1);
      expect(calculateYoe(startDate: startDate, currentDate: now), 1);
    });

    test('returns 2 at 2 years (Aug 1, 2024)', () {
      final now = DateTime(2024, 8, 1);
      expect(calculateYoe(startDate: startDate, currentDate: now), 2);
    });

    test('returns 3 at 3 years (Aug 1, 2025)', () {
      final now = DateTime(2025, 8, 1);
      expect(calculateYoe(startDate: startDate, currentDate: now), 3);
    });

    test('returns 4 at 4 years (Aug 14, 2026)', () {
      final now = DateTime(2026, 8, 14);
      expect(calculateYoe(startDate: startDate, currentDate: now), 4);
    });

    test('default parameters calculate dynamically against current date', () {
      final yoe = calculateYoe();
      expect(yoe, greaterThanOrEqualTo(2));
    });
  });
}
