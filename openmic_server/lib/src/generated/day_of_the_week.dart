/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum DayOfTheWeek implements _i1.SerializableModel {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday;

  static DayOfTheWeek fromJson(int index) {
    switch (index) {
      case 0:
        return DayOfTheWeek.sunday;
      case 1:
        return DayOfTheWeek.monday;
      case 2:
        return DayOfTheWeek.tuesday;
      case 3:
        return DayOfTheWeek.wednesday;
      case 4:
        return DayOfTheWeek.thursday;
      case 5:
        return DayOfTheWeek.friday;
      case 6:
        return DayOfTheWeek.saturday;
      default:
        throw ArgumentError(
            'Value "$index" cannot be converted to "DayOfTheWeek"');
    }
  }

  @override
  int toJson() => index;
  @override
  String toString() => name;
}
