import java.util.HashSet;
import java.util.Set;
import java.util.stream.*;



class SumOfMultiples {
    private int mNumber;
    private int[] mSet;
    private Set<Integer> solutionSet;

    SumOfMultiples(int number, int[] set) {
        mNumber = number;
        mSet = set;
    }

    int getSum() {
        int result = 0;
        solutionSet = new HashSet<>();
        for (int i = 1; i < mNumber; i++) {
            for (int setNum : mSet) {
                if (i % setNum == 0) {
                    solutionSet.add(i);
                }
            }
        }
        Integer[] numArray = solutionSet.toArray(new Integer[solutionSet.size()]);
        for (int arrayNum : numArray) {
            result += arrayNum;
        }
        
        return result;
    }

}
