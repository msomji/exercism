import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class DifferenceOfSquaresCalculator {
    public int computeSquareOfSumTo(int num) {
        return (int) Math.pow((int) IntStream.rangeClosed(1, num).sum(), 2);
    }

    public int computeDifferenceOfSquares(int num) {
        return computeSquareOfSumTo(num) - computeSumOfSquaresTo(num);
    }

    public int computeSumOfSquaresTo(int num) {
        return IntStream.rangeClosed(1,num).map(x -> (int) Math.pow(x,2)).sum();
    }
} 