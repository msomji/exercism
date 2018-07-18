import java.util.Arrays;
import java.util.List;

class Proverb {
	StringBuilder builder;
	
    Proverb(String[] words) {
    		builder = new StringBuilder();
	    	List<String> wordList = Arrays.asList(words);
	    	int length = wordList.size();
	    	
	    	wordList
		    	.stream()
		    	.filter(s -> wordList.indexOf(s) != length-1)
		    	.forEach(word -> {
		    		int nextIndex = wordList.indexOf(word)+1;
				formLine(word, wordList.get(nextIndex));
		    	});
	    	
	    	if (!wordList.isEmpty()) 
	    		builder.append(String.format("And all for the want of a %s.", wordList.get(0)));
    }
    
    private void formLine(String current, String nextWord) {
    		builder.append(String.format("For want of a %s the %s was lost.\n", current, nextWord));
    }

    String recite() {
    	return builder.toString();
    }

}
