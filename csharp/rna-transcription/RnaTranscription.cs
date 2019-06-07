using System;
using System.Collections.Generic;
using System.Linq;

public static class RnaTranscription
{

    private static Dictionary<char, char> converter = new Dictionary<char, char>
    {
        {'G', 'C'}, {'C', 'G'}, {'T', 'A'}, {'A', 'U'}
    };


    public static string ToRna(string nucleotide) =>
         string.Join("", nucleotide.ToList()
                .Select(c => converter[c]));

}