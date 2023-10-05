import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider = AsyncNotifierProvider<HomeScreenNotifier, String>(
  () {
    return HomeScreenNotifier();
  },
  name: 'homeScreenProvider',
  dependencies: const [],
);

class HomeScreenNotifier extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() {
    return 'success';
  }
}

final homeScreenProvider2 = NotifierProvider<HomeScreenNotifier2, void>(
  () {
    return HomeScreenNotifier2();
  },
  name: 'homeScreenProvider',
  dependencies: const [],
);

class HomeScreenNotifier2 extends Notifier<void> {
  @override
  FutureOr<void> build() {
    return null;
  }
}
