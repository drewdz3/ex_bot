# Copilot Instructions for ExBot Flutter Project

## Copilot Instructions
During copilot interactions, please adhere to the following guidelines:
- when multiple steps are available, summarize them concisely, but do not provide execution details for them. Allow the user to select the first step. Keep track of the current step and work through them one at a time with the user.
- keep responses concise and focused on the specific task at hand.

## Project Overview
This is a clean-slate Flutter 3.9.2+ project named `ex_bot` targeting **Android, iOS, and web** platforms. The project uses Material Design with a modern Flutter architecture stack including Cubit, Freezed, and other production-ready packages.

## Architecture & Structure

### Core Application
- **Entry Point**: `lib/main.dart` - Contains the main app with a MaterialApp
- **Package Name**: `ex_bot` with namespace `com.exbotfitness.dev` (Android)
- **Display Name**: "ExBot" (configured in platform-specific files like `ios/Runner/Info.plist`)

### Platform Configurations
- **Android**: Uses Kotlin DSL (`build.gradle.kts`), targets SDK versions managed by Flutter, Java 11 compatibility
- **iOS**: Standard Runner configuration with Info.plist bundle identifier setup  
- **Web**: Basic HTML template with Flutter base href placeholder pattern (for debugging/development). Do not use as the msal package does not support web.
- **Desktop platforms disabled** - project focuses on mobile-first with web debugging support

## Development Workflows

### Dependencies & Environment
```bash
flutter pub get              # Install dependencies
flutter clean               # Clean build artifacts
flutter doctor              # Check development environment
```

### Building & Running
```bash
flutter run                  # Run on connected device/emulator
flutter run -d chrome       # Run on web browser (debugging)
flutter run -d android      # Run on Android device/emulator
flutter run -d ios          # Run on iOS simulator/device
flutter build apk           # Build Android APK
flutter build ipa            # Build iOS archive
flutter build web           # Build for web (debugging only)
```

### Code Quality
- **Linting**: Uses `package:flutter_lints/flutter.yaml` (strict Flutter-recommended rules)
- **Analysis**: Run `flutter analyze` for static analysis
- **Formatting**: Use `dart format .` for consistent code formatting
- **Standards**: Follow [Effective Dart](https://dart.dev/effective-dart) guidelines for all code

## Key Conventions & Patterns

### File Organization
- Follow clean architecture patterns. Examples of folders:
  - `lib/app/` for app-level configuration and routing
  - `lib/core/` for shared infrastructure (DI, network, errors, constants)
  - `lib/shared/` for cross-cutting widgets, models, and services
  - `lib/features/` for feature modules following clean architecture layers
- Each feature has its own `data/`, `domain/`, and `presentation/` subfolders

### Platform-Specific Considerations
- Android uses Kotlin with Java 11 compatibility
- Web builds expect proper base href configuration
- All platforms configured for Flutter's standard build pipeline

### Architecture Stack
- **State Management**: Cubit (part of bloc package) for state management
- **Code Generation**: Freezed for immutable data classes and unions
- **HTTP Client**: Dio for network requests with interceptors
- **Routing**: GoRouter for declarative routing
- **Dependency Injection**: Injectable with GetIt for service location
- **Assets**: Vector graphics support for scalable icons and illustrations

## Critical Development Notes

### Project Initialization
- This is a fresh Flutter project with minimal boilerplate
- No custom plugins or complex dependencies yet
- Standard Flutter SDK constraints (^3.9.2)
- Material Design theming enabled but not customized

### Expected Dependencies (to be added)
```yaml
dependencies:
  flutter_bloc: ^8.1.3          # Cubit/Bloc state management
  freezed_annotation: ^2.4.1    # Immutable classes
  dio: ^5.3.2                    # HTTP client
  go_router: ^12.1.1             # Declarative routing
  injectable: ^2.3.2             # Dependency injection
  get_it: ^7.6.4                 # Service locator
  flutter_svg: ^2.0.9           # Vector graphics support

dev_dependencies:
  build_runner: ^2.4.7          # Code generation
  freezed: ^2.4.6               # Code generation for data classes
  injectable_generator: ^2.4.1  # DI code generation
  json_serialization: ^6.7.1    # JSON serialization
```

### Clean Architecture Structure
```
lib/
├── main.dart
├── app/                    # App-level configuration
│   ├── app.dart           # Main app widget
│   ├── router/            # Global routing (GoRouter)
│   └── theme/             # App theming
├── core/                  # Shared infrastructure
│   ├── di/                # Injectable DI setup
│   ├── network/           # Dio configuration
│   ├── errors/            # Custom exceptions
│   └── constants/         # App constants
├── shared/                # Cross-cutting concerns
│   ├── widgets/           # Reusable UI components
│   ├── models/            # Common Freezed models
│   └── services/          # Cross-feature communication & shared logic
└── features/              # Feature modules (micro-frontend style)
    └── [feature_name]/
        ├── [feature_name].dart # Barrel export file
        ├── data/
        │   ├── datasources/    # API/local data sources
        │   ├── models/         # DTOs and API models
        │   └── repositories/   # Repository implementations
        ├── domain/
        │   ├── entities/       # Business objects (Freezed)
        │   ├── repositories/   # Repository interfaces
        │   └── usecases/       # Business logic
        └── presentation/
            ├── cubits/         # Feature state management
            ├── pages/          # Full screen widgets
            └── widgets/        # Feature-specific widgets
```

### Architecture Patterns
- **Feature-First Structure**: Each feature is self-contained with its own data/domain/presentation layers
- **Clean Architecture**: Clear separation of concerns with dependency inversion
- **Cubit Pattern**: Feature-specific Cubits for state management, emit Freezed states
- **Repository Pattern**: Abstract data access with injectable implementations
- **UseCase Pattern**: Encapsulate business logic in single-responsibility classes
- **Cross-Cutting Concerns**: Use shared services for communication between features
- **Barrel Exports**: Each feature exports public API through `[feature_name].dart`

### Test Structure (Mirrors Feature Structure)
```
test/
├── app/                    # App-level tests
├── core/                   # Core infrastructure tests
├── shared/                 # Shared component tests
└── features/               # Feature-specific tests
    └── [feature_name]/
        ├── data/
        │   ├── datasources/
        │   ├── models/
        │   └── repositories/
        ├── domain/
        │   ├── entities/
        │   └── usecases/
        └── presentation/
            ├── cubits/
            └── widgets/
```

### Implementation Guidelines

#### Feature Development Workflow
1. **Create feature folder** under `lib/features/[feature_name]/`
2. **Define entities** (domain layer) using Freezed for immutability
3. **Create repository interfaces** (domain layer) for data access
4. **Implement repositories** (data layer) with @injectable annotation
5. **Build use cases** (domain layer) for business logic
6. **Create Cubits** (presentation layer) consuming use cases
7. **Build UI** (presentation layer) listening to Cubit states
8. **Create barrel export** `[feature_name].dart` exposing public API
9. **Mirror test structure** under `test/features/[feature_name]/`

#### Cross-Feature Communication
- **Shared Services**: Use `lib/shared/services/` for cross-cutting concerns
- **Event-Driven**: Services can use streams/subjects for feature communication
- **Dependency Injection**: Register shared services with @injectable for global access
- **Avoid Direct Coupling**: Features should not directly import from each other

#### Code Generation Commands
```bash
dart run build_runner build --delete-conflicting-outputs    # Generate Freezed/Injectable
dart run build_runner watch --delete-conflicting-outputs    # Watch mode for development
```

#### Naming Conventions (Effective Dart)
- **Files**: `snake_case.dart`
- **Classes**: `PascalCase` 
- **Variables/Methods**: `camelCase`
- **Constants**: `lowerCamelCase` (not SCREAMING_CASE)
- **Feature folders**: `snake_case`

## Testing & Debugging
- No tests currently exist - use `flutter test` when added
- Use `flutter logs` for device debugging
- VS Code/Android Studio debugging supported via standard Flutter tooling