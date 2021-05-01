package utilities;

import java.util.Random;

public class DataUtils {

    /**
     * This method will generate random emails.
     * Ex:
     *      getRandomEmail(); returns "emmsks@gmail.com"
     */

    public static String getRandomEmail(){
        String email = "abc";
        Random random = new Random();
        int number = random.nextInt(10000);
        return email+number+"@gmail.com";

    }
}
