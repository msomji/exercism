using System;
using System.Collections.Generic;
using System.Linq;

public static class Grains
{
    public static ulong Square(int n)
    {
        
        new List<int>(n).Aggregate((initial, next )=> ulong.TryParse(initial)+ Grains.Square(next));
        throw new NotImplementedException("You need to implement this function.");
    }

    public static ulong Total()
    {
        throw new NotImplementedException("You need to implement this function.");
    }
}