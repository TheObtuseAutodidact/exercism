class LuhnValidator {

    boolean isValid(String candidate) {
        int sumTotal = 0;
        candidate = candidate.replaceAll("\\s","");
        if (candidate.length() < 2) {
            return false;
        }
        candidate = reverse(candidate);
        for (int i = 0; i < candidate.length(); i++) {
            if (!Character.isDigit(candidate.charAt(i))) { return false; }

            Integer num = Character.getNumericValue(candidate.charAt(i));
            if (i % 2 == 0) {
                sumTotal += num;
            } else {
                sumTotal += ((num * 2) > 9) ? num * 2 - 9 : num * 2;
            }
        }

        return (sumTotal % 10 == 0);
    }

    private String reverse(String myNumString) {
        StringBuilder newString = new StringBuilder();
        for (String letter : myNumString.split("")) {
            newString.insert(0,letter);
        }
        return newString.toString();
    }

}
