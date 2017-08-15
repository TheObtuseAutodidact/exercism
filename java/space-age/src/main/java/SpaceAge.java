class SpaceAge {
    private Double mSeconds;
    private static final Long EARTH_YEAR_IN_SECONDS = 31557600L;
    private static final Double MERCURY_FRACTION_OF_EARTH = 0.2408467;
    private static final Double VENUS_FRACTION_OF_EARTH = 0.61519726;
    private static final Double MARS_FRACTION_OF_EARTH = 1.8808158;
    private static final Double JUPITER_FRACTION_OF_EARTH = 11.862615;
    private static final Double SATURN_FRACTION_OF_EARTH = 29.447498;
    private static final Double URANUS_FRACTION_OF_EARTH = 84.016846;
    private static final Double NEPTUNE_FRACTION_OF_EARTH = 164.79132;
    

    SpaceAge(double seconds) {
        this.mSeconds = seconds;
    }

    double getSeconds() {
        return mSeconds;
    }

    double onEarth() {
        return mSeconds / EARTH_YEAR_IN_SECONDS;
    }

    double onMercury() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * MERCURY_FRACTION_OF_EARTH);
    }

    double onVenus() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * VENUS_FRACTION_OF_EARTH);
    }

    double onMars() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * MARS_FRACTION_OF_EARTH);
    }

    double onJupiter() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * JUPITER_FRACTION_OF_EARTH);
    }

    double onSaturn() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * SATURN_FRACTION_OF_EARTH);
    }

    double onUranus() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * URANUS_FRACTION_OF_EARTH);        
    }

    double onNeptune() {
        return mSeconds / (EARTH_YEAR_IN_SECONDS * NEPTUNE_FRACTION_OF_EARTH);        
        
    }

}
