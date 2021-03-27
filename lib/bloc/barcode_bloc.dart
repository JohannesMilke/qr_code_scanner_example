import 'dart:async';

class BarcodeBloc {
  final StreamController<String> _barcodeController = StreamController();

  StreamSink<String> get barcodeSink => _barcodeController.sink;
  Stream<String> get barcodeStream => _barcodeController.stream;

  void dispose() {
    _barcodeController.close();
  }
}
