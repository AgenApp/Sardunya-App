import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'user_profile.freezed.dart';
part 'user_profile.g.dart';
// creating user profile object with combine hive and freezed package
@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();
  @HiveType(typeId: 2, adapterName: 'UserProfileAdapter')
  const factory UserProfile({
    @HiveField(0, defaultValue: true) required bool isFirst,
  }) = _UserProfile;
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
  factory UserProfile.initial() => const UserProfile(isFirst: true);
}
