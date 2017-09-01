import java.util.ArrayList;
import java.util.List;
import java.util.Collections;

class LuhnValidator {

    boolean isValid(String candidate) {
        List<Integer> digits = new ArrayList<>();
        candidate = candidate.replaceAll("\\s","");
        if (candidate.length() < 2) {
            return false;
        }
        candidate = reverse(candidate);
        for (int i = 0; i < candidate.length(); i++) {
            Integer num = Character.getNumericValue(candidate.charAt(i));
            if (i % 2 == 0) {
                digits.add(num);
            } else {
                num *= 2;
                if ( num > 9) {
                    num -= 9;
                }
                digits.add(num);
            }
        }
        Integer sum = 0;
        for (int digit : digits) {
            sum += digit;
        }
        System.out.println(sum);
        return (sum % 10 == 0);
    }

    private String reverse(String myNumString) {
        String newString = "";
        for (String letter : myNumString.split("")) {
            newString = letter + newString;
        }
        return newString;
    }

}
