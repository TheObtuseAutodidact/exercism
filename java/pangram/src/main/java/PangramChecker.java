public class PangramChecker {

    static String[] ALPHABET = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};

    public boolean isPangram(String input) {
        for (String letter : ALPHABET) {
            if (!input.toLowerCase().contains(letter)) {
                return false;
            }
        }
        return true;
    }

}
