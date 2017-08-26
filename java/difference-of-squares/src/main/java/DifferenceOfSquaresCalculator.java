public class DifferenceOfSquaresCalculator {
    public DifferenceOfSquaresCalculator() {
        System.out.println("Let's Goooooo!");
    }

    public int computeSquareOfSumTo(int i) {
        int sum = 0;
        for (int j = 1; j <= i; j++) {
            sum += j;
        }
        return sum * sum;
    }

    public int computeSumOfSquaresTo(int i) {
        int sum = 0;
        for (int j = 1; j <= i; j++) {
            sum += j*j;
        }
        return sum;
    }

    public int computeDifferenceOfSquares(int i) {
        return computeSquareOfSumTo(i) - computeSumOfSquaresTo(i);
    }
}