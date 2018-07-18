import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class ProteinTranslator {
	private Map<String, String> dictionary;
	private Boolean cont = true;
	
	public ProteinTranslator() {
		dictionary = new HashMap<String, String>();
		
        dictionary.put("AUG", "Methionine");
        dictionary.put("UUU", "Phenylalanine");
        dictionary.put("UUC", "Phenylalanine");
        dictionary.put("UUA", "Leucine");
        dictionary.put("UUG", "Leucine");
        dictionary.put("UCU", "Serine");
        dictionary.put("UCC", "Serine");
        dictionary.put("UCA", "Serine");
        dictionary.put("UCG", "Serine");
        dictionary.put("UAU", "Tyrosine");
        dictionary.put("UAC", "Tyrosine");
        dictionary.put("UGU", "Cysteine");
        dictionary.put("UGC", "Cysteine");
        dictionary.put("UGG", "Tryptophan");
        dictionary.put("UAA", "STOP");
        dictionary.put("UAG", "STOP");
        dictionary.put("UGA", "STOP");
        
	}

    List<String> translate(String rnaSequence) {
    	
    		return Arrays.asList(rnaSequence.split("(?<=\\G...)"))
    			 .stream()
    			 .map(c -> dictionary.get(c))
    			 .filter(s -> cont = cont ? (s != "STOP") : cont)
    			 .collect(Collectors.toList());
    }    
}