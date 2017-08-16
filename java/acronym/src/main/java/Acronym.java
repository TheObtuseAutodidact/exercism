import java.util.List;
import java.util.ArrayList;

class Acronym {

    private String mPhrase;
    // private List<String> wordList;


    Acronym(String phrase) {
        mPhrase = phrase;
    }

    String get() {
        String result = "";
        for (String word : mPhrase.split("[^\\w]+")) {
            result += word.charAt(0);
        }        System.out.println(result);
        return  result.toUpperCase();
    }

}
