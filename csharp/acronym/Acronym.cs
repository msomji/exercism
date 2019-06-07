using System;
using System.Collections.Generic;
using System.Linq;

public static class Acronym
{


    public static string Abbreviate(string phrase)
    {
        char[] foo = phrase.Split(new char[] { '-', '_', ' ' }, StringSplitOptions.RemoveEmptyEntries)
                .Select(word => word[0])
                .ToArray();
        return string.Join("", foo).ToUpper();
    }
}