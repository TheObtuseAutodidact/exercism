public class Hamming {
    
    String lStrand, rStrand;

    public Hamming(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }
        lStrand = leftStrand;
        rStrand = rightStrand;
    }

    int getHammingDistance() {
        // if (lStrand.length() != rStrand.length()) {
        //     System.out.println("****************************************");
        //     throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        // }
        if (lStrand.equals(rStrand)) {
            return 0;
        }
        int distance = 0;
        for (int i = 0; i < lStrand.length(); i++) {
            if (!String.valueOf(lStrand.charAt(i)).equals(String.valueOf(rStrand.charAt(i)))) {
                distance++;
            }
        }
        return distance;
    }

}
