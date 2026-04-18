# AGENTS.md - arzly Flutter Project

## Commands

- `flutter pub get` - Install dependencies
- `flutter run` - Run the app
- `flutter analyze` - Run linting
- `dart run build_runner build --delete-conflicting-outputs` - Generate Freezed/JSON Serializable code

## Architecture

- Single Flutter app (not a monorepo)
- Entry point: `lib/main.dart`
- Domain entities in `lib/domain/entities/`
- Enums in `lib/shared/enums/`

## Code Generation

- Uses `freezed` and `json_serializable` for immutable models
- After adding/changing `@freezed` or `@JsonSerializable` annotated classes, run build_runner to regenerate `.g.dart` and `.freezed.dart` files