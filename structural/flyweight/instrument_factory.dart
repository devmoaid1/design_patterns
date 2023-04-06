import 'guitar.dart';
import 'musical_instrument.dart';
import 'piano.dart';

class InstrumentFactory {
  Map<String, MusicalInstrument> _instrumentsMap =
      Map<String, MusicalInstrument>();

  MusicalInstrument createInstrument(String instrument) {
    late MusicalInstrument musicalInstrument;

    if (_instrumentsMap.containsKey(instrument)) {
      musicalInstrument = _instrumentsMap[instrument]!;
    } else {
      switch (instrument) {
        case 'piano':
          musicalInstrument = Piano();
          _instrumentsMap[instrument] = Piano();
          break;
        case 'guitar':
          musicalInstrument = Guitar();
          _instrumentsMap[instrument] = Guitar();
          break;
        default:
          throw 'instrument isn`t supported';
      }
    }

    return musicalInstrument;
  }
}
