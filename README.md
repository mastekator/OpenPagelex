# OpenPagelex

Learn a language from your own textbook. Work in progress.

Licensed under [AGPL-3.0](LICENSE).

## Build and install on your iPhone

You need a Mac with [Flutter](https://docs.flutter.dev/get-started/install) (stable) and Xcode. A free Apple ID is enough, no paid developer account.

1. `flutter pub get`
2. Open `ios/Runner.xcworkspace` in Xcode, select the Runner target, then Signing & Capabilities: pick your Apple ID as the team and set a unique bundle identifier.
3. Connect the iPhone, enable Developer Mode on it (Settings → Privacy & Security), and run `flutter run --release`.
4. On the iPhone, trust your developer certificate in Settings → General → VPN & Device Management.

With a free Apple ID the app stops launching after 7 days; run step 3 again to reinstall it.
