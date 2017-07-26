public class RnaTranscription {
    public String transcribe(String dnaStrand) {
        String solution = "";
        String qualifyingStrand = "GCTA";
        for (int i=0; i < dnaStrand.length(); i++) {
            String charToString = Character.toString(dnaStrand.charAt(i));

            if (charToString.equalsIgnoreCase("G")) {
                solution = solution.concat("C");
            }
            if (charToString.equalsIgnoreCase("C")) {
                solution = solution.concat("G");
            }
            if (charToString.equalsIgnoreCase("T")) {
                solution = solution.concat("A");
            }
            if (charToString.equalsIgnoreCase("A")) {
                solution = solution.concat("U");
            }
        }
        return solution;
    }
}

// * `G` -> `C`
// * `C` -> `G`
// * `T` -> `A`
// * `A` -> `U`