import 'dart:async';

class SideMenuController {
  late String _currentPage;

  String get currentPage => _currentPage;

  SideMenuController({String? initialPage}) {
    _currentPage = initialPage??"0";
  }
  final _streamController = StreamController<String>.broadcast();

  Stream<String> get stream => _streamController.stream;

  void changePage(String page) {
    _currentPage = page;
    _streamController.sink.add(page);
  }

  void dispose() {
    _streamController.close();
  }

  void addListener(void Function(String index) listener) {
    _streamController.stream.listen(listener);
  }

  void removeListener(void Function(String) listener) {
    _streamController.stream.listen(listener).cancel();
  }
}
