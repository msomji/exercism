using System;
using System.Collections.Generic;
public static class ResistorColor
{
    static string[] colors = new string[]
    {
        "black", "brown", "red", "orange",
        "yellow", "green", "blue", "violet",
        "grey", "white"
    };
    public static int ColorCode(string color) => Array.IndexOf(colors, color);

    public static string[] Colors() => colors;
}