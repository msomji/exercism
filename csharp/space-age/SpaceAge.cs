using System;
using System.Collections.Generic;
using System.Linq;

public class SpaceAge
{
    private const int DefaultPrecision = 2;
        private const double Earth = 31557600;
        private const double Mercury = 0.2408467;
        private const double Venus = 0.61519726;
        private const double Mars = 1.8808158;
        private const double Jupiter = 11.862615;
        private const double Saturn = 29.447498;
        private const double Uranus = 84.016846;
        private const double Neptune = 164.79132;
  private int seconds;

    public SpaceAge(int seconds)
    {
        this.seconds = seconds;
    }

    public double OnEarth() => this.seconds / Earth;
    public double OnMercury() => OnEarth() / Mercury;
    public double OnVenus() => OnEarth() / Venus;
    public double OnMars() => OnEarth() / Mars;
    public double OnJupiter() => OnEarth() / Jupiter;
    public double OnSaturn() => OnEarth() / Saturn;
    public double OnUranus() => OnEarth() / Uranus;
    public double OnNeptune() => OnEarth() / Neptune;
}