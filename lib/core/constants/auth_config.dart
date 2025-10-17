    import 'package:ex_bot/core/constants/app_constants.dart';
    import 'package:flutter_dotenv/flutter_dotenv.dart';

    class AuthConfig {
      static String get tenantName {
        final tenantName = dotenv.env['AUTH_TENANT_NAME'];
        if ((tenantName != null) && tenantName.isNotEmpty) {
          return tenantName;
        }
        return AppConstants.emptyString;
      }

      static String get clientId {
        final clientId = dotenv.env['AUTH_CLIENT_ID'];
        if ((clientId != null) && clientId.isNotEmpty) {
          return clientId;
        }
        return AppConstants.emptyString;
      }

      static String get redirectUri {
        final redirectUri = dotenv.env['AUTH_REDIRECT_URI'];
        if ((redirectUri != null) && redirectUri.isNotEmpty) {
          return redirectUri;
        }
        return AppConstants.emptyString;
      }

      static String get issuer {
        final issuer = dotenv.env['AUTH_ISSUER'];
        if ((issuer != null) && issuer.isNotEmpty) {
          return issuer;
        }
        return AppConstants.emptyString;
      }

      static String get discoveryUrl {
        final discoveryUrl = dotenv.env['AUTH_DISCOVERY_URL'];
        if ((discoveryUrl != null) && discoveryUrl.isNotEmpty) {
          return discoveryUrl;
        }
        return AppConstants.emptyString;
      }

      static String get scopes {
        final scopesString = dotenv.env['AUTH_SCOPES'];
        if ((scopesString != null) && scopesString.isNotEmpty) {
          return scopesString;
        }
        return AppConstants.emptyString;
      }
    }
