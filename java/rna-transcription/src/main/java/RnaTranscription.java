import java.util.HashMap;

public class RnaTranscription {

    public String transcribe(String dnaStrand) {
        String solution = "";
        HashMap<String, String> nTideMap = new HashMap<>();
        nTideMap.put("G","C");
        nTideMap.put("C","G");
        nTideMap.put("T","A");
        nTideMap.put("A","U");

        for (int i=0; i < dnaStrand.length(); i++) {
            String charToString = Character.toString(dnaStrand.charAt(i));
            solution += nTideMap.get(charToString);
        }
        return solution;
    }
}
