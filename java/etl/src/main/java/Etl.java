import javax.xml.bind.Element;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Etl {

    public Map<String, Integer> transform(Map<Integer, List<String>> old) {
        Map<String, Integer> result = new HashMap<>();

        old.forEach((k, v) -> v.forEach(letter -> result.put(letter.toLowerCase(), k)));
        return result;
    }



}
