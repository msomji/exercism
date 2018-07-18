import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class DNA {
    private String dna;
    private Map<Character, Integer> nucleotides;

    public DNA(String dna) {
        this.dna = dna;
        this.nucleotides = new HashMap<>();
        this.nucleotides.put('A', 0);
        this.nucleotides.put('C', 0);
        this.nucleotides.put('T', 0);
        this.nucleotides.put('G', 0);
        this.compute();
    }

    public Integer count(Character strand) {
        if (!this.nucleotides.containsKey(strand))
            throw new IllegalArgumentException();

        return this.nucleotides.get(strand);
    }

    public Map<Character, Integer> nucleotideCounts(){
        return this.nucleotides;
    }

    private void compute(){
        for (char el : this.dna.toCharArray()) {
            Integer count = this.nucleotides.get(el);
            this.nucleotides.put(el, count + 1 );
        }
    }d
}
