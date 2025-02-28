# Top 20 Songs Flutter Application

This repository demonstrates a clean architecture Flutter application that fetches the Top-20 songs from an API, stores them in a local database (Isar), displays them in a list, and provides cart management and basic audio playback features.

## Repository Details

- **GitHub Repository**: [https://github.com/utsav-savani/interview_IG](https://github.com/utsav-savani/interview_IG)

## Prerequisites

- Flutter 3.27.4
- Dart SDK
- Flutter Version Management (FVM) recommended

## Getting Started

### 1. Clone the Repository

There are two ways to clone the repository:

#### Using HTTPS:
```bash
git clone https://github.com/utsav-savani/interview_IG.git
cd interview_IG
```

#### Using SSH:
```bash
git clone git@github.com:utsav-savani/interview_IG.git
cd interview_IG
```

### 2. Set Up Flutter Version (Recommended)

If you haven't installed FVM, install it first:
```bash
dart pub global activate fvm
```

Install the specific Flutter version:
```bash
fvm install 3.27.4
fvm use 3.27.4
```

### 3. Get Dependencies

```bash
fvm flutter pub get
```

### 4. Generate Required Code

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

## Features & Requirements

1. **App Flow**
    - **API Fetch**: Retrieves Top-20 songs from iTunes API
    - **Local Database**: Caches songs in Isar
    - **List Display**: Shows song details with add to cart functionality
    - **Song Details**: Detailed view with optional audio playback
    - **Cart Management**: Real-time cart updates and checkout

2. **Connectivity**
    - One-time API fetch with offline support
    - Automatic data refresh when back online

3. **Architecture**
    - Clean Architecture
    - BLoC/Cubit State Management

## Folder Structure

```
lib/
├── core/
│   ├── constants/        # App-wide constants (e.g., AppConstants)
│   │   └── app_constants.dart
│   ├── errors/           # Custom exceptions & failures
│   │   └── failures.dart
│   ├── network/          # ConnectivityCubit, NetworkInfo, etc.
│   │   ├── connectivity_cubit.dart
│   │   └── network_info.dart
│   ├── theme/            # App themes (light/dark)
│   │   ├── app_theme.dart
│   │   └── theme_constants.dart
│   └── utils/            # Utility helpers
│       ├── ui_helpers/   # Helper files
│       │   ├── audio_controls_helper.dart
│       │   └── cart_helper.dart
│       └── media_query_utils.dart
│
├── data/
│   ├── datasources/
│   │   ├── local/        # Local data sources
│   │   │   ├── song_local_datasource.dart
│   │   │   └── cart_local_datasource.dart
│   │   └── remote/       # Remote data sources
│   │       └── song_remote_datasource.dart
│   ├── models/           # Isar models, JSON models
│   │   ├── song_model.dart
│   │   └── cart_item_model.dart
│   └── repositories/     # Repository implementations
│       └── song_repository_impl.dart
│
├── domain/
│   ├── entities/         # Core domain entities
│   │   ├── song.dart
│   │   └── cart_item.dart
│   ├── repositories/     # Abstract repository interfaces
│   │   ├── song_repository.dart
│   │   └── cart_repository.dart
│   └── usecases/         # Business logic use cases
│       ├── get_songs.dart
│       └── add_to_cart.dart
│
├── presentation/
│   ├── bloc/             # State management cubits
│   │   ├── cart/         # Cart-related state management
│   │   │   ├── cart_cubit.dart
│   │   │   └── cart_state.dart
│   │   ├── player/       # Audio player state management
│   │   │   ├── player_cubit.dart
│   │   │   └── player_state.dart
│   │   └── songs/        # Songs-related state management
│   │       ├── songs_cubit.dart
│   │       └── songs_state.dart
│   ├── screens/          # App screens
│   │   ├── home_screen.dart
│   │   ├── cart_screen.dart
│   │   └── song_details_screen.dart
│   └── widgets/          # Reusable UI components
│       ├── song_list_item.dart
│       ├── cart_item_widget.dart
│       └── custom_app_bar.dart
│
├── routes/               # Navigation configuration
│   └── app_router.dart   # go_router configuration
│
├── di/                   # Dependency Injection
│   └── injection_container.dart  # get_it service locator
│
├── app.dart              # MultiBlocProviders & MaterialApp.router
└── main.dart             # App entry point
│
└── test/
    ├── domain/
    │   └── usecases/     # Domain layer tests
    │       └── get_songs_test.dart
    ├── presentation/
    │   └── screens/      # Screen tests
    │       └── home_screen_test.dart
    └── widget_test.dart
│
└── integration_test/
    └── home_screen_integration_test.dart
```

Explanation of Key Directories

core/: Contains app-wide utilities, constants, and core functionalities
data/: Implements data layer with local and remote data sources
domain/: Defines core business logic and entities
presentation/: Manages UI, state management, and user interactions
routes/: Handles app navigation configuration
di/: Sets up dependency injection
test/: Contains unit and widget tests
integration_test/: Includes end-to-end integration tests

This structure follows Clean Architecture principles, separating concerns and making the codebase modular and testable.

## Running the App

```bash
# Using FVM
fvm flutter run

# Standard Flutter
flutter run
```

## Testing

### Run Unit and Widget Tests
```bash
fvm flutter test
```

### Run Specific Test
```bash
fvm flutter test test/domain/usecases/get_songs_test.dart
```

### Run Integration Test
```bash
fvm flutter test integration_test/home_screen_integration_test.dart
```

## Additional Resources

- **APK Download**: [Google Drive Link](https://drive.google.com/drive/folders/14DYrA5xOH-19HFsGDVCqGc6XWaIr2-L-?usp=drive_link)

## Highlights

- Offline data handling
- Swipe to refresh
- Real-time cart management
- Optional audio playback
- Comprehensive test coverage

## Troubleshooting

- Ensure you have the correct Flutter version (3.27.4)
- Run `flutter pub get` to resolve dependencies
- Use `build_runner` to generate required files


## Contact

Utsav Savani - [GitHub Profile](https://github.com/utsav-savani)

Project Link: [https://github.com/utsav-savani/interview_IG](https://github.com/utsav-savani/interview_IG)