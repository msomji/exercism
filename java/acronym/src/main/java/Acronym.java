import java.util.Arrays;
import java.util.Collections;
import java.util.stream.Collectors;

class Acronym {
    String phrase;

    Acronym(String phrase) {
         this.phrase = phrase;
    }

    String get() {
        return Arrays.stream(this.phrase.split("(\\s|-)"))
                    .map(w -> w.substring(0,1).toUpperCase())
                    .collect(Collectors.joining());
    }
}
