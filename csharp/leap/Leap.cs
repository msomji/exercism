using System;
using System.Linq;

public static class Leap
{
    public static bool IsLeapYear(int year) => (year % 4 == 0 && !int.Equals(year % 100, 0)) || int.Equals(year % 400, 0);
}