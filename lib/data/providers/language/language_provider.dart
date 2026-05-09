import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

@Riverpod(keepAlive: true)
class LanguageNotifier extends _$LanguageNotifier {
  @override
  String build() => 'English';

  void setLanguageFromLabel(String label) {
    state = switch (label) {
      'English' => 'English',
      'Arabic' => 'Arabic',
      _ => 'English',
    };
    _onLanguagePreferenceUpdated();
  }

  void _onLanguagePreferenceUpdated() {}
}
