import java.util.ArrayList;
import java.util.List;


class NaturalNumber {

    private int number;
    private List<Integer> list;

    public NaturalNumber(int number) {
        if (number < 1) {
            throw new IllegalArgumentException("You must supply a natural number (positive integer)");
        }
        this.number = number;
    }

    public Classification getClassification() {
        list = generateList();

        if (isPerfect()) {
            return Classification.PERFECT;
        }

        if (isAbundant()) {
            return Classification.ABUNDANT;
        }

        return Classification.DEFICIENT;
    }

    private int sumList() {
        int sum = 0;
        for (int num : list) {
            sum += num;
        }
        return sum;
    }

    private boolean isPerfect() {
        return (this.number == this.sumList());
    }

    private boolean isAbundant() {
        return (this.sumList() > this.number);
    }

    private List<Integer> generateList() {
        List<Integer> generatedList = new ArrayList<Integer>();
        for (int i = 1; i < this.number; i++) {
            if (this.number % i == 0) {
                generatedList.add(i);
            }
        }
        return generatedList;
    }

}
