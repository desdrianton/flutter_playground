import 'dart:async';
import 'dart:developer';

class CounterBloc {
  int _counter = 0;

  int get counterValue => _counter;

  final StreamController<CounterEvent> _inputStreamController = StreamController<CounterEvent>();

  StreamSink get inputSink => _inputStreamController.sink;

  final StreamController<int> _outputStreamController = StreamController<int>();

  StreamSink get outputSink => _outputStreamController.sink;

  Stream get outputStream => _outputStreamController.stream;

  CounterBloc() {
    log('=== CounterBloc constructor');

    _inputStreamController.stream.listen((event) {
      if (event == CounterEvent.increase) {
        _counter++;
      } else if (event == CounterEvent.decrease) {
        _counter--;
      }

      outputSink.add(_counter);
    });
  }

  void dispose() {
    log('=== CounterBloc.dispose');

    _inputStreamController.close();
    _inputStreamController.close();
  }
}

enum CounterEvent {
  increase, decrease
}
