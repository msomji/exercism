import java.util.Arrays;

public class Atbash {

    public String decode(String cipherText) {
        StringBuilder result = new StringBuilder();
        String foo = cipherText.replaceAll("\\s", "");
        for(char c: foo.toCharArray()) {
            result.append(cipher(c));
        }
        return result.toString().trim();
    }


    public String encode (String plainText) {
        StringBuilder result = new StringBuilder();
        int count = 0;
        for(char c: plainText.toLowerCase().toCharArray()) {
            count +=1;
            result.append(cipher(c));

            if (count % 5 == 0) {
                result.append(" ");
            }
        }
        return result.toString();
    }

    private char cipher(Character c) {
        if(Character.isDigit(c)) {
            return c;

        }
        return (char) (219 - (int) c);
    }

}
