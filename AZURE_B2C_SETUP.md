# Azure AD B2C Setup Guide for ExBot (Entra ID)

## Overview
This guide will help you set up Azure AD B2C (now part of Microsoft Entra ID) for user authentication in the ExBot Flutter app with Microsoft Account social login.

## Step 1: Create Azure AD B2C Tenant

### Option A: Through Azure Portal
1. **Go to Azure Portal**: https://portal.azure.com
2. **Search for "Azure AD B2C"** in the top search bar
3. **Click "Create a new Azure AD B2C Tenant"**
4. **Choose "Create a new Azure AD B2C Tenant"**
5. **Fill in the details**:
   - Organization name: `ExBot`
   - Initial domain name: `exbot` (will become exbot.onmicrosoft.com)
   - Country/Region: Your country
6. **Click "Review + create"** then **"Create"** and wait for deployment

### Option B: Through Entra ID (Recommended)
1. **Go to Microsoft Entra admin center**: https://entra.microsoft.com
2. **Navigate to**: Identity → External Identities → Overview
3. **Click "Get started with Azure AD B2C"**
4. **Create new B2C tenant** with same details as above

## Step 2: Switch to Your B2C Tenant
1. **In Azure Portal**: Click your profile → Switch directory
2. **Select your ExBot B2C tenant**
3. **Navigate to**: Azure AD B2C (should appear in left menu now)

## Step 3: Configure Identity Providers

### Microsoft Account Provider (Built-in)
1. **In your B2C tenant**: Go to **Identity providers**
2. **Microsoft Account should already be available** (it's built-in)
3. **If not visible**: Click **"+ New OpenID Connect provider"**
4. **For now, we'll use the built-in Microsoft Account provider**

### Note: Microsoft Account is Pre-configured
- Azure AD B2C has Microsoft Account as a built-in identity provider
- No additional client ID/secret setup needed for Microsoft Account
- We'll configure this in the user flow settings

## Step 4: Register Flutter App

1. **In your B2C tenant**: Go to **App registrations** → **"+ New registration"**
2. **Fill in details**:
   - **Name**: `ExBot Flutter App`
   - **Supported account types**: "Accounts in any identity provider or organizational directory (for authenticating users with user flows)"
   - **Redirect URI**: Leave blank for now
3. **Click "Register"**

### Configure the App Registration
1. **Copy the Application (client) ID** - this is your `AZURE_B2C_CLIENT_ID`
2. **Go to Authentication**:
   - Click **"+ Add a platform"**
   - Select **"Mobile and desktop applications"**
   - **Add redirect URI**: `msal[YOUR_CLIENT_ID]://auth` (replace [YOUR_CLIENT_ID] with actual client ID)
   - Example: `msal12345678-1234-1234-1234-123456789012://auth`
3. **Advanced settings**:
   - **Allow public client flows**: Yes
   - **Enable the following mobile and desktop flows**: Yes

## Step 5: Create User Flows

### Sign-up and Sign-in Flow
1. **Go to** **User flows** → **"+ New user flow"**
2. **Select flow type**: **"Sign up and sign in"**
3. **Select version**: **"Recommended"**
4. **Click "Create"**
5. **Configure the flow**:
   - **Name**: `signupsignin` (system will prefix with B2C_1_)
   - **Identity providers**: 
     - ✅ **Microsoft Account** (select this)
     - ✅ **Email signup** (for email-based accounts)
   - **Multifactor authentication**: Optional (can enable later)
   - **Conditional access**: Skip for now
6. **User attributes and claims**:
   - **Collect attributes** (what to ask during signup):
     - ✅ Display Name
     - ✅ Given Name  
     - ✅ Surname
   - **Return claims** (what to include in token):
     - ✅ Display Name
     - ✅ Email Addresses
     - ✅ Given Name
     - ✅ Surname
     - ✅ User's Object ID
7. **Click "Create"**

### Profile Editing Flow (Optional)
1. **Go to** User flows → New user flow
2. **Select** "Profile editing" → Version: Recommended  
3. **Name**: `B2C_1_profileedit`
4. **Identity providers**: Microsoft Account
5. **User attributes**: Display Name, Given Name, Surname
6. **Click Create**

### Password Reset Flow (Optional)
1. **Go to** User flows → New user flow
2. **Select** "Password reset" → Version: Recommended
3. **Name**: `B2C_1_passwordreset`
4. **Claims**: Email Addresses
5. **Click Create**

## Step 6: Get Your Configuration Values

After completing the setup above, you'll have these values:

1. **Tenant Name**: `exbot` (from step 1)
2. **Client ID**: From the App registration (step 4)
3. **Policy Name**: `B2C_1_signupsignin` (from step 5)

## Step 7: Update Your .env File

Add these actual values to your `.env` file:

```env
# Azure AD B2C Configuration
AZURE_B2C_TENANT_NAME=exbot
AZURE_B2C_CLIENT_ID=your_actual_client_id_from_step_4
AZURE_B2C_POLICY_SIGNIN=B2C_1_signupsignin
AZURE_B2C_POLICY_EDIT_PROFILE=B2C_1_profileedit
AZURE_B2C_POLICY_PASSWORD_RESET=B2C_1_passwordreset
```

### Example with real values:
```env
AZURE_B2C_TENANT_NAME=exbot
AZURE_B2C_CLIENT_ID=12345678-1234-1234-1234-123456789012
AZURE_B2C_POLICY_SIGNIN=B2C_1_signupsignin
AZURE_B2C_POLICY_EDIT_PROFILE=B2C_1_profileedit
AZURE_B2C_POLICY_PASSWORD_RESET=B2C_1_passwordreset
```

## Step 8: Test Your Configuration

1. **Go to** **User flows** → **B2C_1_signupsignin**
2. **Click "Run user flow"**
3. **Application**: Select your **ExBot Flutter App**
4. **Reply URL**: Should show your redirect URI
5. **Click "Run user flow"** to test the login experience
6. **Try signing in** with your Microsoft Account
7. **Verify** the experience works and you get the expected user claims

## Android Configuration (Additional Steps)

### Azure B2C Android Platform Registration Info:
- **Package Name**: `com.exbotfitness.dev`
- **SHA-1 Signature Hash (Hex)**: `43:58:25:70:1F:8D:88:DB:92:31:71:E1:53:53:CB:9A:ED:44:09:56`

### Generate Base64 Encoded SHA-1 Hash:

The correct command to generate base64 encoded SHA-1 hash for Azure B2C:
```bash
# For debug keystore (development):
keytool -exportcert -alias androiddebugkey -keystore ~/.android/debug.keystore -storepass android -keypass android | openssl sha1 -binary | openssl base64

# For Windows debug keystore:
keytool -exportcert -alias androiddebugkey -keystore "%USERPROFILE%\.android\debug.keystore" -storepass android -keypass android | openssl sha1 -binary | openssl base64

# For custom keystore (production):
keytool -exportcert -alias SIGNATURE_ALIAS -keystore PATH_TO_KEYSTORE | openssl sha1 -binary | openssl base64
```

**Current Debug Keystore Base64 SHA-1**: `Q1glcB+NiNuSMXHhU1PLmu1ECVY=`

Add to `android/app/src/main/AndroidManifest.xml`:

```xml
<activity android:name="com.microsoft.identity.client.BrowserTabActivity">
    <intent-filter>
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />
        <data android:scheme="msalYOUR_CLIENT_ID" android:host="auth" />
    </intent-filter>
</activity>
```

## iOS Configuration (Additional Steps)

### Azure B2C iOS Platform Registration Info:
- **Bundle ID**: `com.exbotfitness.dev`

Add to `ios/Runner/Info.plist`:

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>com.exbotfitness.dev</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>msalYOUR_CLIENT_ID</string>
        </array>
    </dict>
</array>
```

## Next Steps

1. **Complete Azure B2C setup** following this guide
2. **Update your .env file** with the actual values
3. **Implement Flutter MSAL integration** (we'll do this next)
4. **Test login flow** with Microsoft Account

## Important Notes

- Replace `YOUR_CLIENT_ID` with your actual Azure AD B2C app client ID
- The tenant name `exbot` can be changed to your preference
- Keep your client secret secure and never commit it to version control
- Test the user flows in Azure portal before implementing in Flutter

## Resources

- [Azure AD B2C Documentation](https://docs.microsoft.com/azure/active-directory-b2c/)
- [MSAL Flutter Documentation](https://github.com/AzureAD/microsoft-authentication-library-for-flutter)