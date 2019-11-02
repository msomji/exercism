using System;
using System.Linq;

public static class LargestSeriesProduct
{
    public static long GetLargestProduct(string digits, int span) 
    {

        if((digits.Length < span || digits.Any(char.IsLetter) || span < 0)
         ) {
            throw new ArgumentException();
        }

        if((digits.Equals("") || span == 0)) {
            return 1;
        }

        return  Enumerable.Range(0, digits.Length -1)
                .Select(index => 
                    digits
                    .Substring(new int[]{index, digits.Length -span}.Min(), span)
                    .ToCharArray()
                    .Select(x =>  int.Parse(x.ToString()))
                    .Aggregate((a,b) => a * b)
                ).Max();
    }
}