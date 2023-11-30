import '../../domain/entities/user.dart';
import '../../typedefs.dart';

class UserModel extends UserProfile {
  const UserModel({
    required super.id,
    required super.name,
  });

  factory UserModel.fromSupabaseUser({
    required String id,
    required Json metadata,
  }) {
    return UserModel(
      id: id,
      name: metadata['name'] ?? 'test user',
    );
  }
}
