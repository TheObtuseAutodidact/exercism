import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class Scrabble {
    private HashMap<Integer, String> alphabet = new HashMap<Integer, String>();
    private String mWord;

    Scrabble(String word) {
        alphabet.put(1, "AEIOULNRST");
        alphabet.put(2, "DG");
        alphabet.put(3, "BCMP");
        alphabet.put(4, "FHVWY");
        alphabet.put(5, "K");
        alphabet.put(8, "JX");
        alphabet.put(10, "QZ");
        mWord = word;
    }

    int getScore() {
        int totalScore = 0;
        for (Character letter : mWord.toCharArray()) {
            for (Map.Entry<Integer, String> entry : alphabet.entrySet()) {
                if (entry.getValue().contains(String.valueOf(letter).toUpperCase())) {
                    totalScore += entry.getKey();
                }
            }
        }
        return totalScore;
    }

}
