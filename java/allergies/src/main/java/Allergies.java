import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Allergies {

    private int score;

    public Allergies(int score){
        this.score = score;
    }

    public boolean isAllergicTo(Allergen allergen){
        return 0 != (this.score & allergen.getScore());
    }

    public List<Allergen> getList() {
        return Arrays.stream(Allergen.values())
                .filter(a -> isAllergicTo(a))
                .collect(Collectors.toList());
    }
}
