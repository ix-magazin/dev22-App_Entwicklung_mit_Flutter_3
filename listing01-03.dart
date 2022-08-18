///////////////////////////////////////////////////////////////////////////
// Listing 1: Diskrete Zustaende komfortabel mit Enhanced Enums abbilden //
///////////////////////////////////////////////////////////////////////////

enum Water {
    solid(-273.15),
    liquid(0),
    gas(100);

    final num minTemperature;
    const Water(this.minTemperature);
}
enum SimpleAudioPlayer {
    loading,
    playing,
    paused;

    void play() {
        if (this != loading) { 
            // ... 
    }
}

    void pause() {
        // ...
    }
}


////////////////////////////////////////////////////////////////////////////////////
// Listing 2: Konstruktorparameter mit Super-Initializer-Parametern weiterreichen //
////////////////////////////////////////////////////////////////////////////////////

@immutable
class MyFormField extends FormField<double> {
    const MyFormField({
        super.enabled,
        super.autovalidateMode,
        required super.builder,
        super.initialValue,
        super.key,
        super.onSaved,
        super.validator,
        this.max = 100.0,
        this.min = 0.0,
    });

    final double max;
    final double min;
}


////////////////////////////////////////////////////////////////////////////////////////
// Listing 3: Lesbarkeit durch variabel positionierbare benannte Argumente verbessern //
////////////////////////////////////////////////////////////////////////////////////////

final fibonacci = List.generate(10, growable: false, (index) {
    var a = 0;
    var b = 1;
    var c = index;
    for (var i = 2; i <= index; i++)
{        c = a + b;
        a = b;
        b = c;
    }

    return c;
});