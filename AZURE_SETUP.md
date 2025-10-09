# Azure OpenAI Configuration Setup

## Step 1: Get Your Azure OpenAI Credentials

From your Azure OpenAI resource in the Azure Portal:

1. Go to your Azure OpenAI resource: `exbot-openai-dev` (or whatever you named it)
2. Click "Keys and Endpoint" in the left menu
3. Copy the following values:
   - **Key 1** (your API key)
   - **Endpoint** (e.g., `https://exbot-openai-dev.openai.azure.com/`)
   - **Deployment Name** (e.g., `gpt-4-1-mini-deployment`)

## Step 2: Configure Your Environment

### Option A: Environment Variables (Recommended for Development)

Set these environment variables in your system or IDE:

```bash
export AZURE_OPENAI_API_KEY="your_actual_api_key_here"
export AZURE_OPENAI_ENDPOINT="https://your-resource-name.openai.azure.com"
export AZURE_OPENAI_DEPLOYMENT_NAME="gpt-4-1-mini-deployment"
export AZURE_OPENAI_API_VERSION="2024-06-01"
```

### Option B: Modify EnvironmentConfig (Temporary for Testing)

Edit `lib/core/constants/environment_config.dart` and replace the default values:

```dart
static const String azureOpenaiApiKey = 'your_actual_api_key_here';
static const String azureOpenaiEndpoint = 'https://your-resource-name.openai.azure.com';
```

⚠️ **Important**: Never commit real API keys to version control!

## Step 3: Test the Integration

1. Run the app: `flutter run`
2. The app will show a simple "Hello World" interface
3. To test Azure OpenAI integration, you can:
   - Add the test page to your main app
   - Or run unit tests once we create them

## Step 4: Verify Configuration

The `EnvironmentConfig.isConfigured` property will return `true` when your credentials are properly set up.

## Next Steps

Once configured, you'll have:
- ✅ Azure OpenAI Service integration
- ✅ GPT-4.1-mini AI coaching
- ✅ Error handling and logging
- ✅ Clean architecture implementation
- ✅ Ready for UI development

## Troubleshooting

- **401 Unauthorized**: Check your API key
- **404 Not Found**: Verify your endpoint URL and deployment name
- **Rate Limits**: Check your Azure OpenAI quota and rate limits
- **Network Issues**: Ensure your internet connection is stable