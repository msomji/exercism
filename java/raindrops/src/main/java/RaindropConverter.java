import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class RaindropConverter {

    private static final HashMap<Integer, String> rainDrops = new HashMap<>();
    static {
        rainDrops.put(3, "Pling");
        rainDrops.put(5, "Plang");
        rainDrops.put(7, "Plong");
    }
    String convert(int number) {

        List<String> output = rainDrops.keySet()
                                .stream()
                                .filter(factor -> number % factor == 0)
                                .map(rainDrops::get)
                                .collect(Collectors.toList());

        return output.isEmpty() ? Integer.toString(number) : String.join("", output);
    }

}
