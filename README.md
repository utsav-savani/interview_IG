```markdown
# Top 20 Songs Flutter Application

This repository demonstrates a clean architecture Flutter application that fetches the Top-20 songs from an API, stores them in a local database (Isar), displays them in a list, and provides cart management and basic audio playback features. It includes:

- **Unit tests** (for domain use cases)
- **Widget tests** (for UI components like the `HomeScreen`)
- **Integration tests** (verifying the end-to-end flow on a real device/emulator)
- A **forked** `isar_flutter_libs` package to accommodate build.gradle changes (namespace) needed for Android builds

The app is built on **Flutter 3.27.4** (FVM configured).

---

## Features & Requirements

1. **App Flow**
   - **API Fetch**: The app invokes the iTunes Top Songs API and stores the Top-20 songs in an Isar database.
   - **Local Database**: Subsequent launches read from Isar unless a refresh is triggered.
   - **List Display**: Shows each song’s album image, title, artist name (optional), an “Add to Cart” button, and an optional “Listen” icon.
   - **Song Details**: Tapping a song navigates to a detail screen showing full info and optional audio playback.
   - **Cart Management**:
      - **Add to Cart**: The cart icon in the top right updates its badge count in real time.
      - **View Cart**: Allows incrementing/decrementing quantities or removing items.
      - **Checkout**: Displays a summary dialog of items. “DONE” clears the cart, “CANCEL” closes the dialog.

2. **Connectivity**
   - **One-Time API Fetch**: If data is already cached, the app displays it immediately. If the user forcibly refreshes (pull-to-refresh), or local data is empty, it attempts to fetch from the remote API.
   - **Connectivity Handling**: A `ConnectivityCubit` listens for changes (online/offline). If the user goes offline, the app continues to serve cached data. When coming back online (and data is empty or in error), the app automatically re-fetches from the API.

3. **Architecture & State Management**
   - **Clean Architecture**: Divided into `domain`, `data`, and `presentation` layers.
   - **BLoC/Cubit**: Used for state management. E.g., `SongsCubit`, `CartCubit`, `PlayerCubit`, etc.

4. **Bonus Points**
   - **Better UI/UX**: A polished UI with a refresh indicator, cart badge, and album images.
   - **Media Player Notification**: `just_audio_background` for Android media controls (play/pause).
   - **Proper Test Coverage**: Unit, widget, and integration tests.

---

## Folder Structure

Below is an overview of the main folders:

```
lib/
├── core/
│   ├── constants/        # App-wide constants (e.g., AppConstants)
│   ├── errors/           # Custom exceptions & failures
│   ├── network/          # ConnectivityCubit, NetworkInfo, etc.
│   ├── theme/            # App themes (light/dark)
│   └── utils/            # Utility helpers
│       ├── ui_helpers/   # Helper files (audio_controls_helper, cart_helper, etc.)
│       └── media_query_utils.dart
├── data/
│   ├── datasources/
│   │   ├── local/        # song_local_datasource.dart, cart_local_datasource.dart
│   │   └── remote/       # song_remote_datasource.dart
│   ├── models/           # Isar models, JSON models
│   └── repositories/     # Implementations of domain repositories
├── domain/
│   ├── entities/         # Song, CartItem, etc.
│   ├── repositories/     # Abstract repository interfaces
│   └── usecases/         # get_songs.dart, add_to_cart.dart, etc.
├── presentation/
│   ├── bloc/
│   │   ├── cart/         # CartCubit, CartState
│   │   ├── player/       # PlayerCubit, PlayerState
│   │   └── songs/        # SongsCubit, SongsState
│   ├── screens/          # HomeScreen, CartScreen, SongDetailsScreen
│   └── widgets/          # Reusable widgets (SongListItem, CartItemWidget, etc.)
├── routes/
│   └── app_router.dart   # go_router configuration
├── di/
│   └── injection_container.dart # get_it service locator initialization
├── app.dart              # MultiBlocProviders & MaterialApp.router
└── main.dart             # App entry point (init DI, JustAudioBackground, .env, etc.)

test/
├── domain/
│   └── usecases/         # get_songs_test.dart, etc.
├── presentation/
│   └── screens/          # home_screen_test.dart
└── widget_test.dart      # Additional tests

integration_test/
└── home_screen_integration_test.dart  # Integration test for HomeScreen
```

### Forked isar_flutter_libs

We forked **isar_flutter_libs** to add the missing namespace in its `build.gradle`. This ensures a successful Android build with the latest AGP requirements. The forked version is included as a local or Git dependency in our `pubspec.yaml`.

---

## How to Run

### 1. Generate Code (Freezed/Build Runner)

If your project uses code generation for models (e.g., Freezed, Isar adapters, etc.), run:

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

This generates all `.g.dart` or `.freezed.dart` files required for your models and other codegen.

### 2. Run the App

Use FVM or standard Flutter commands to run the app:

```bash
fvm flutter run
```

*(If you’re not using FVM, just `flutter run`.)*

---

## Testing

We have **unit tests** (in `test/domain/usecases`), **widget tests** (in `test/presentation/screens`), and **integration tests** (in `integration_test/home_screen_integration_test.dart`).

1. **Unit & Widget Tests**
   - Example commands:
     ```bash
     fvm flutter test test/domain/usecases/get_songs_test.dart
     fvm flutter test test/presentation/screens/home_screen_test.dart
     ```
   - Or run all tests:
     ```bash
     fvm flutter test
     ```

2. **Integration Test**
   - We have an integration test for the HomeScreen in `integration_test/home_screen_integration_test.dart`.
   - Run it with:
     ```bash
     fvm flutter test integration_test/home_screen_integration_test.dart
     ```
   - *Note:* For full plugin support (e.g., path_provider, audio), consider using `flutter drive` or the official `integration_test` runner on an actual device/emulator.

---

## Highlights

- **Offline Handling**: The app calls the API once on the first run (or when forced). If offline, it relies on Isar-cached data. When connectivity is restored, if the DB is empty or an error state exists, the app automatically re-fetches from the API.
- **Swipe to Refresh**: Pull-to-refresh logic on the HomeScreen triggers a forced API call if the user wants the latest data.
- **Cart & Checkout**: Real-time cart updates with increment/decrement quantity, checkout dialog, and a final clear on “DONE.”
- **Audio Playback**: Optional listen icon using `just_audio_background` for Android media notifications.

---

## APK and Source Code

You can download the **APK** and **source code** from this Google Drive link:  
[**Download**](https://drive.google.com/drive/folders/14DYrA5xOH-19HFsGDVCqGc6XWaIr2-L-?usp=drive_link)

---

## Conclusion

This project fulfills the requirements of displaying the Top-20 songs from the iTunes RSS feed, storing them locally, providing a cart system, and handling connectivity gracefully. We used a clean architecture approach, BLoC/Cubit for state management, and included thorough testing (unit, widget, and integration) to ensure reliability. Feel free to explore, run the tests, and experiment with the forked `isar_flutter_libs` for the Android build fix.