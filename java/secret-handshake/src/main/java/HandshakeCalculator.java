import java.util.Collections;
import java.util.ArrayList;
import java.util.List;

class HandshakeCalculator {

    List<Signal> calculateHandshake(int number) {
        List<Signal> result = new ArrayList<>();
        String bin = Integer.toBinaryString(number);
        if (bin.length() >= 1) {
            if (bin.charAt(bin.length() - 1) == '1') {
                result.add(Signal.WINK);
            }
        }
        if (bin.length() >= 2) {
            if (bin.charAt(bin.length() - 2) =='1') {
                result.add(Signal.DOUBLE_BLINK);
            }
        }
        if (bin.length() >= 3) {
            if (bin.charAt(bin.length() - 3) =='1') {
                result.add(Signal.CLOSE_YOUR_EYES);
            }
        }
        if (bin.length() >= 4) {
            if (bin.charAt(bin.length() - 4) =='1') {
                result.add(Signal.JUMP);
            }
        }
        if (bin.length() >= 5) {
            if (bin.charAt(bin.length() - 5) =='1') {
                Collections.reverse(result);
            }
        }
        return result;
    }
}
