public class Hamming {
    private String leftStrand;
    private String rightStrand;
    private int distance = 0;

    public Hamming(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }
        this.leftStrand = leftStrand;
        this.rightStrand = rightStrand;
    }

    int getHammingDistance() {
        if (leftStrand.equals(rightStrand)) {
            return 0;
        }

        for (int i = 0; i < leftStrand.length(); i++) {
            if (!String.valueOf(leftStrand.charAt(i)).equals(String.valueOf(rightStrand.charAt(i)))) {
                distance++;
            }
        }
        return distance;
    }
}