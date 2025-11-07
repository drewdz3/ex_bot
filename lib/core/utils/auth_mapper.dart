import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/auth_result.dart';
import 'package:jwt_decode/jwt_decode.dart';

AppUser authResultToAppUser(AuthResult authResult) {
  try {
    // check that we have a valid id token and decode
    if ((authResult.idToken == null) || authResult.idToken!.isEmpty) {
      throw Exception('ID token is missing in auth result');
    }

    Map<String, dynamic> claims = Jwt.parseJwt(authResult.idToken!);

    String email = AppConstants.emptyString;
    if (claims['emails'] != null) {
      var list = claims['emails'] as List<dynamic>;
      email = list.isNotEmpty ? list.first : AppConstants.emptyString;
    }

    int authTime = claims['auth_time'];
    authTime *= 1000; // convert to milliseconds

    return AppUser(
      id: claims['oid'] ?? claims['sub'] ?? AppConstants.emptyString,
      email: email,
      displayName: claims['given_name'] ?? '[unknown]',
      createdAt: DateTime.now(),
      lastLoginAt: DateTime.fromMicrosecondsSinceEpoch(authTime),
    );
  } catch (e) {
    DebugLogger.error('Failed to map auth result to app user: $e');
    return AppUser(
      id: AppConstants.emptyString,
      email: AppConstants.emptyString,
      displayName: '[unknown]',
      createdAt: DateTime.now(),
    );
  }
}
