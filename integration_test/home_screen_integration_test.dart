import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:interviewpractical/app.dart';
import 'package:interviewpractical/di/injection_container.dart' as di;

void main() async {
  // Ensure the integration test binding is initialized.
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "env/.env");
  // Initialize dependency injection.
  await di.init();

  testWidgets('HomeScreen integration test', (WidgetTester tester) async {
    // Launch the entire app using the production App widget.
    await tester.pumpWidget(const App());

    // Allow time for the app to initialize and for any async operations to settle.
    await tester.pumpAndSettle(const Duration(seconds: 5));

    // Verify that HomeScreen is displayed by checking for the AppBar title.
    expect(find.text('Top 20 Songs'), findsOneWidget);

    // Verify that the HomeScreen scaffold is present using its key.
    expect(find.byKey(const Key('homeScreenScaffold')), findsOneWidget);

    // If your HomeScreen shows a list of songs, try to locate a song list item.
    // Here we assume that SongListItem renders a ListTile or contains the song title.
    final songItemFinder = find.byType(ListTile);
    if (songItemFinder.evaluate().isNotEmpty) {
      // Tap on the first song item.
      await tester.tap(songItemFinder.first);
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Verify that the SongDetailsScreen is displayed.
      // For example, if the details screen displays the text 'Preview', check for it:
      expect(find.text('Preview'), findsWidgets);

      // Navigate back to HomeScreen.
      await tester.pageBack();
      await tester.pumpAndSettle();

      // Verify that HomeScreen is still visible.
      expect(find.byKey(const Key('homeScreenScaffold')), findsOneWidget);
    }

    // Test pull-to-refresh by finding the RefreshIndicator and performing a drag.
    final refreshIndicatorFinder = find.byType(RefreshIndicator);
    expect(refreshIndicatorFinder, findsOneWidget);
    await tester.drag(refreshIndicatorFinder, const Offset(0, 300));
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Verify that HomeScreen remains visible after refresh.
    expect(find.byKey(const Key('homeScreenScaffold')), findsOneWidget);
  });
}
