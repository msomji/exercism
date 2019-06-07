using System;
using System.Linq;

public static class Isogram
{
    public static bool IsIsogram(string word) => 
               word.ToLower()
                   .Where(Char.IsLetter)
                   .GroupBy(l => l)
                   .All(value => value.Count() == 1);
}


