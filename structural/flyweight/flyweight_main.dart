import 'instrument_factory.dart';
import 'musical_instrument.dart';

void main(List<String> args) {
  InstrumentFactory musicInstrumentFactory = InstrumentFactory();

  MusicalInstrument piano = musicInstrumentFactory.createInstrument('piano');

  piano.play();

  // act as another region of the system using the factory
  MusicalInstrument piano2 = musicInstrumentFactory.createInstrument('piano');
  piano2.play();
}
