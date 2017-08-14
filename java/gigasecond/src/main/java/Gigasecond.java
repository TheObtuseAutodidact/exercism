import java.time.LocalDate;
import java.time.LocalDateTime;

class Gigasecond {
    private LocalDateTime bDateTime;

    Gigasecond(LocalDate birthDate) {
        bDateTime = LocalDateTime.of(birthDate.getYear(), 
            birthDate.getMonthValue(), 
            birthDate.getDayOfMonth(),
            0,0,0);
    }

    Gigasecond(LocalDateTime birthDateTime) {
        bDateTime = birthDateTime;
    }

    LocalDateTime getDate() {
        return bDateTime.plusSeconds(1000000000L);
    }

}