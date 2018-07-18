import java.util.stream.IntStream;

class NaturalNumber {
	private static Integer num;
	NaturalNumber(Integer number) throws IllegalArgumentException {
		if (number <= 0)  throw new IllegalArgumentException("You must supply a natural number (positive integer)");
		num = number;
	}
	
	static Classification getClassification() {
		 int sum = IntStream.range(1, num)
					.filter(n -> num % n == 0)
					.sum();
		 
		return sum == num ? Classification.PERFECT: 
				sum > num ? Classification.ABUNDANT: Classification.DEFICIENT;
	}


}
