public class SpaceAge {
    private long seconds;
    private enum YearsInSeconds {
        EARTH(31557600),
        MERCURY(0.2408467),
        VENUS(0.61519726),
        MARS(1.8808158),
        JUPITER(11.862615),
        SATURN(29.447498),
        URANUS(84.016846),
        NEPTUNE(164.79132);

        private double time;
        YearsInSeconds(double secs) {
            time = secs;
        }
        public double getTime(){
            return time;
        };
    }

    public SpaceAge(long seconds) {
        this.seconds = seconds;
    }

    public long getSeconds(){
        return this.seconds;
    }


    public double onEarth() {
        return this.seconds / YearsInSeconds.EARTH.getTime();
    }

    public double onMercury() {
        return onEarth() / YearsInSeconds.MERCURY.getTime();
    }

    public double onVenus() {
        return onEarth() / YearsInSeconds.VENUS.getTime();
    }

    public double onMars() {
        return onEarth() / YearsInSeconds.MARS.getTime();
    }

    public double onJupiter() {
        return onEarth() / YearsInSeconds.JUPITER.getTime();
    }

    public double onSaturn() {
        return onEarth() / YearsInSeconds.SATURN.getTime();
    }

    public double onUranus() {
        return onEarth() / YearsInSeconds.URANUS.getTime();
    }

    public double onNeptune() {
        return onEarth() / YearsInSeconds.NEPTUNE.getTime();
    }
}