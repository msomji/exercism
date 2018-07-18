import java.time.LocalDate;
import java.time.LocalDateTime;

public class Gigasecond {
    private LocalDateTime date;
    private static long GIGASECONDS = 1000000000L;

    public Gigasecond(LocalDate date) {
        this.date = date.atStartOfDay();
    }
    public Gigasecond(LocalDateTime date) {
        this.date = date;
    }

    public LocalDateTime getDate() {
        return this.date.plusSeconds(GIGASECONDS);
    }
}
