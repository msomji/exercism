import java.util.Arrays;
import java.util.stream.Collectors;

public class RnaTranscription {
    public String ofDna(String dnaString) {

        return Arrays.stream(dnaString.split(""))
                     .map(this::translate)
                     .collect(Collectors.joining());
    }

    private String translate(String rna) {
        switch (rna) {
            case "G" : return "C";
            case "C" : return "G";
            case "T" : return "A";
            case "A" : return "U";
        }
        return rna;
    }
}