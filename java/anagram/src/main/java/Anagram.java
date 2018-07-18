import java.util.Arrays;
import java.util.List;
import static java.util.stream.Collectors.toList;

public class Anagram {
    private char[] sortedInput;
    private String input;

    public Anagram(String input) {
        this.input = input;
        this.sortedInput = this.input.toLowerCase().toCharArray();
        Arrays.sort(this.sortedInput);
    }

    public List<String> match(List<String> words) {
        return words.stream()
                .filter(a -> findMatches(a))
                .collect(toList());
    }

    private boolean findMatches(String word) {
        char[] sortedLowerWord = word.toLowerCase().toCharArray();
        Arrays.sort(sortedLowerWord);

        return (Arrays.equals(sortedLowerWord, sortedInput) && !word.equalsIgnoreCase(input));
    }
}
