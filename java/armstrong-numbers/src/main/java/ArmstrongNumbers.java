import java.util.Arrays;
import java.util.List;
import java.util.Optional;

class ArmstrongNumbers {

	boolean isArmstrongNumber(int numberToCheck) {

		List<String> numbers = Arrays.asList(Integer.toString(numberToCheck).split(""));
		int length = numbers.size();
		
		return numberToCheck == numbers
				.stream()
				.map(num -> Math.pow(Integer.parseInt(num), length))
				.reduce((a,b) -> a+b).get().intValue();
	}

}