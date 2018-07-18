import java.util.Arrays;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Hamming {
    private String a,  b;

    public Hamming(String a, String b) {
        this.a = a;
        this.b = b;
        validateStrings(a, b);
    }

    public Integer getHammingDistance() {
        int total = 0;
        return Stream.of(a.toCharArray())
                    .filter(current -> b.charAt(a.indexOf(current.toString())) == current[1])
                    .collect(Collectors.toList())
                    .size();


        // for (int i = 0, n = a.length(); i < n; i++) {
        //     if (a.charAt(i) != b.charAt(i)) { total += 1; }
        // }
        // return total;

    }

    // private String foo(char a, String b){


    //    return b.charAt(a.indexOf('a')).toString();
    // }

    private void validateStrings(String a, String b) {
        if (a.length() != b.length()) {
            throw new IllegalArgumentException();
        }
    }
}