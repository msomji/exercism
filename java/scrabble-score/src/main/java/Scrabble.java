import java.util.HashMap;
import java.util.Map;

public class Scrabble {

    private String word;
    private Map<String, Integer> scoreMap = new HashMap<>();
    private int score;

    public Scrabble(String word) {
        this.score = 0;
        this.word = word;
        this.scoreMap.put("AEIOULNRST", 1);
        this.scoreMap.put("DG", 2);
        this.scoreMap.put("BCMP", 3);
        this.scoreMap.put("FHVWY", 4);
        this.scoreMap.put("K", 5);
        this.scoreMap.put("JX", 8);
        this.scoreMap.put("QZ", 10);
    }

    public int getScore() {
        if(this.word != null){
            for (Character letter : this.word.toUpperCase().toCharArray()) {
                for( String ref : scoreMap.keySet()) {
                    if (ref.indexOf(letter) >= 0) {
                        score += this.scoreMap.getOrDefault(ref, 0);
                    }
                }
            }
        }
        return this.score;
    }

}