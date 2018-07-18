import java.util.ArrayList;
import java.util.List;
import static java.util.Collections.reverse;

class HandshakeCalculator {

    public List<Signal> calculateHandshake(Integer num) {
        List<Signal> result = new ArrayList<Signal>();

        for(Signal s : Signal.values()) {
            if ((num & s.getPoint()) != 0) result.add(s);
        }
        
        if ((num & 16) != 0) reverse(result);
        
        return result;
    }
}
