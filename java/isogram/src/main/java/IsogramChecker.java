// import java.util.ArrayList;
// import java.util.HashMap;
// import java.util.Map;

// public class IsogramChecker {
//     boolean isIsogram(String phrase) {
//         String[] splitPhrase = phrase.split("");

//         ArrayList<String> filteredListOfLetters = filterList(splitPhrase);

//         boolean result = freeOfDuplicates(filteredListOfLetters);

//         return result;
//     }

//     private ArrayList<String> filterList(String[] splitPhrase) {
//         ArrayList<String> filteredList = new ArrayList<>();
//         for (String character : splitPhrase) {
//             if (character.matches("[a-zA-Z]+")) {
//                 filteredList.add(character.toLowerCase());
//             }
//         }
//         return filteredList;
//     }

//     private boolean freeOfDuplicates(ArrayList<String> filteredList) {
//         Map<String, Integer> letterMap = new HashMap<>();
//         for(String letter : filteredList) {
//             if (letterMap.containsKey(letter)) return false;
//             letterMap.put(letter, 1);
//         }
//         return true;
//     }
// }

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

class IsogramChecker {
    boolean isAnIsogram;

    boolean isIsogram(String phrase) {
        String condensedPhrase = phrase.toLowerCase().replaceAll("[^A-Za-z0-9]","");
        int condensedPhraseLength = condensedPhrase.length();

        if(condensedPhraseLength <= 1) return true;
        
        int uniqueLettersLength = getUniqueLettersLength(condensedPhrase);
        return (condensedPhraseLength == uniqueLettersLength);
    }

    int getUniqueLettersLength(String condensedPhrase){
        String[] splitPhrase = condensedPhrase.split("");
        Set<String> uniqueLetters = new HashSet<>(Arrays.asList(splitPhrase));
        return uniqueLetters.size();
    }

}