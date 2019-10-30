import java.util.Map;

class RaindropConverter {

    final Map<Integer, String> plingPlangPlong = Map.of(
        3, "Pling",
        5, "Plang",
        7, "Plong"
    );

    String convert(int number) {
        String result = "";

        for(Integer key : plingPlangPlong.keySet()) {
            if (modZero(number, key)) result += plingPlangPlong.get(key);
        }

        return (result.length() > 0) ? result : String.valueOf(number);
    }

    Boolean modZero(int num, int divisor) {
        return (num % divisor == 0);
    }

}

